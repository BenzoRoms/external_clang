// RUN: clang -fsyntax-only -fobjc-gc -verify %s
struct S {
	__weak id  p;  // expected-warning {{__weak attribute cannot be specified on a field declaration}}
};

int main ()
{
  __weak id  local;  // expected-warning {{__weak attribute cannot be specified on an automatic variable}}
}

