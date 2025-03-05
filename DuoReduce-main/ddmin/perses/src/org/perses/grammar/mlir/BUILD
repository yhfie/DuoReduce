package(default_visibility = [
    "//visibility:public",
])

load("//src/org/perses/grammar:antlr_util.bzl", "antlr_codegen_combined")
load("@io_bazel_rules_kotlin//kotlin:jvm.bzl", "kt_jvm_library")
load("//antlropt/src/org/perses/antlr/pnf:pnf.bzl", "pnf_convert")
load(
    "//src/org/perses/grammar/adhoc:adhoc_grammar.bzl",
    "orig_parser_facade_library",
    "pnf_parser_facade_library",
)

#antlr_codegen_combined(
#    name = "orig_mlir_grammar",
#    grammar_file = "MLIR.g4",
#    java_pkg_name = "org.perses.grammar.mlir",
#    lexer_java_file_name = "MLIRLexer.java",
#    parser_java_file_name = "MLIRParser.java",
#)

pnf_convert(
    name = "normalize_rust_to_pnf",
    src = "MLIR.g4",
    out = "PnfMLIR.g4",
    start_rule_name = "mlir_file",
)

antlr_codegen_combined(
    name = "pnf_mlir_grammar",
    grammar_file = "PnfMLIR.g4",
    java_pkg_name = "org.perses.grammar.mlir",
    lexer_java_file_name = "PnfMLIRLexer.java",
    parser_java_file_name = "PnfMLIRParser.java",
)


kt_jvm_library(
    name = "language_kind",
    srcs = ["LanguageMLIR.kt"],
    deps = [
        "//src/org/perses/program:language_kind",
    ],
)

pnf_parser_facade_library(
    name = "parser_facade",
    java_package_name = "org.perses.grammar.mlir",
    language_kind_full_name = "org.perses.grammar.mlir.LanguageMLIR",
    output_jar_file_name = "parser_facade.jar",
    parser_facade_class_simple_name = "PnfMLIRParserFacade",
    parser_file_name = "MLIR.g4",
    start_rule_name = "mlir_file",
    token_names_of_identifiers = ["DIGITS","BARE_ID"],
    deps = [
        ":language_kind",
    ],
)

orig_parser_facade_library(
    name = "orig_parser_facade",
    java_package_name = "org.perses.grammar.mlir",
    language_kind_full_name = "org.perses.grammar.mlir.LanguageMLIR",
    output_jar_file_name = "orig_parser_facade.jar",
    parser_facade_class_simple_name = "OrigMLIRParserFacade",
    parser_file_name = "MLIR.g4",
    start_rule_name = "mlir_file",
    token_names_of_identifiers = ["Ident"],
    deps = [
        ":language_kind",
    ],
)
