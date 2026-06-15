volatile int sink;

int add(int a, int b) {
    return a + b;
}

int main(void) {
    int x = 1;
    for (int i = 0; i < 10; i++) {
        x = add(x, i);
    }
    sink = x;
    return x;
}
