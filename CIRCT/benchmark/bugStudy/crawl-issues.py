"""
    Retrieve the code snippets in the open issues labeled with 'bug' in the CIRCT repo.
"""

import requests
import json
import csv
import sys
import re
from datetime import date


def get_code_snippets(body):
    """
    Use regex to find code snippets enclosed in tripple backticks (```[language\r\n] code ```).

    :param body: the issue body
    :return: the code snippets, each labeled with 'code_snippet_xx' where xx starting from 01
    """
    code_snippets = re.findall(r'```(?:[a-zA-Z]+\r?\n)?([\s\S]*?)```', body)
    snippets_dict = {}
    for idx, snippet in enumerate(code_snippets):
        snippets_dict[f'code_snippet_{idx + 1:02d}'] = snippet.strip()
    return snippets_dict


def crawl_issues(repo_owner, repo_name, state='all', labels='', crawl_type='complete'):
    """
    Retrieve the issues from the nominated repo. By default, all issues will be saved.

    :param repo_owner: the username of the repo owner
    :param repo_name: the name of the repo
    :param state: issue state; by default, it is 'all'; it can be modified to 'open' and so on
    :param labels: issue labels; by default, it is empty; it can be modified to 'bug' and so on
    :return: retrieved issues containing the details of interest (e.g., issue id, code snippets)
    """
    base_url = f'https://api.github.com/repos/{repo_owner}/{repo_name}/issues'
    params = {
        'state': state,
        'labels': labels,
        'per_page': 100,
    }

    issues = []
    page = 1
    while True:
        response = requests.get(base_url, params=params)
        if response.status_code != 200:
            print(f"Error: Could not fetch issues. Status Code: {response.status_code}")
            break

        curr_issues = response.json()
        for issue in curr_issues:
            if (crawl_type == "complete"):
                issue_details = {
                'number': issue['number'],
                'title': issue['title'],
                'created_at': issue['created_at'],
                'state': issue['state'],
                'labels': ', '.join(label['name'] for label in issue['labels']),
                'body': issue['body'],
                **get_code_snippets(issue['body']),
            }
            
            elif (crawl_type == "code"):
                issue_details = {
                'number': issue['number'],
                **get_code_snippets(issue['body']),
            }
            # issue_details = {
            #     'number': issue['number'],
            #     'title': issue['title'],
            #     'created_at': issue['created_at'],
            #     'state': issue['state'],
            #     'labels': ', '.join(label['name'] for label in issue['labels']),
            #     'body': issue['body'],
            #     **get_code_snippets(issue['body']),
            # }
            issues.append(issue_details)

        if 'next' in response.links:
            page += 1
            params['page'] = page
        else:
            break

    return issues


if __name__ == '__main__':

    if len(sys.argv) != 6:
        print('Usage: python crawl-issues.py <repo-owner> <repo-name> <issue-state> <issue-label> <crawl-type>')
        exit(1) 

    # repo_owner = 'llvm'
    # repo_name = 'circt'
    # state = 'open'
    # labels = 'bug'

    repo_owner = sys.argv[1]
    repo_name = sys.argv[2]
    state = sys.argv[3]
    labels = sys.argv[4]
    crawl_type = sys.argv[5]

    CRAWL_TYPES = ["complete", "code"]
    if (crawl_type not in CRAWL_TYPES):
        print('Usage: python crawl-issues.py <repo-owner> <repo-name> <issue-state> <issue-label> <crawl-type>')
        print('crawl-type: complete | code')
        exit(1)

    issues = crawl_issues(repo_owner, repo_name, state=state, labels=labels, crawl_type=crawl_type)


    today_date = date.today().strftime("%m%d%Y")

    if (crawl_type == "complete"):
        # Save issues to a JSON file
        # output_json_file = 'circt-issues-bug-complete-' + today_date + '.json'
        output_json_file = repo_owner + '-' + repo_name + '-' + state + '-' + labels + '-' + crawl_type + '-' + today_date + '.json'
        with open(output_json_file, 'w') as json_file:
            json.dump(issues, json_file)

        # Save issues to a CSV file
        # output_csv_file = 'circt-issues-bug-complete-' + today_date + '.csv'
        output_csv_file = repo_owner + '-' + repo_name + '-' + state + '-' + labels + '-' + crawl_type + '-' + today_date + '.csv'
        with open(output_csv_file, 'w', newline='') as csv_file:
            # Observation: no more than 10 code snippets in a single issue
            fieldnames = ['number', 'title', 'created_at', 'state', 'labels', 'body'] + [
                f'code_snippet_{i:02d}' for i in range(1, 11)]
            writer = csv.DictWriter(csv_file, fieldnames=fieldnames)
            writer.writeheader()
            for issue in issues:
                writer.writerow(issue)
    
    elif (crawl_type == "code"):
        # Save issues to a JSON file
        output_json_file = 'circt-issues-bug-code-' + today_date + '.json'
        with open(output_json_file, 'w') as json_file:
            json.dump(issues, json_file)

        # Save issues to a CSV file
        output_csv_file = 'circt-issues-bug-code-' + today_date + '.csv'
        with open(output_csv_file, 'w', newline='') as csv_file:
            # Observation: no more than 10 code snippets in a single issue
            fieldnames = ['number'] + [f'code_snippet_{i:02d}' for i in range(1, 11)]
            writer = csv.DictWriter(csv_file, fieldnames=fieldnames)
            writer.writeheader()
            for issue in issues:
                writer.writerow(issue)

    # # Save issues to a JSON file
    # output_json_file = 'circt-issues-bug-complete.json'
    # # output_json_file = 'circt-issues-bug-code.json'
    # with open(output_json_file, 'w') as json_file:
    #     json.dump(issues, json_file)

    # # Save issues to a CSV file
    # output_csv_file = 'circt-issues-bug-complete.csv'
    # # output_csv_file = 'circt-issues-bug-code.csv'
    # with open(output_csv_file, 'w', newline='') as csv_file:
    #     # Observation: no more than 10 code snippets in a single issue
    #     fieldnames = ['number', 'title', 'created_at', 'state', 'labels', 'body'] + [
    #         f'code_snippet_{i:02d}' for i in range(1, 11)]
    #     # fieldnames = ['number'] + [f'code_snippet_{i:02d}' for i in range(1, 11)]
    #     writer = csv.DictWriter(csv_file, fieldnames=fieldnames)
    #     writer.writeheader()
    #     for issue in issues:
    #         writer.writerow(issue)

    print(f"Total number of open issues with the 'bug' label: {len(issues)}")
