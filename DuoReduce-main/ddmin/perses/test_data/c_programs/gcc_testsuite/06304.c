



void abort (void);

int foo(int x)
{
  unsigned long long tmp = 0;

  switch(x) {
    case 21:
      tmp |= 1;
      tmp |= 2;
      tmp |= 8;
      break;
    default:
      break;
  }

  return (int)tmp;
}

int main()
{
  if (foo(21) != 11)
    abort ();
  return 0;
}
