__global__ void VecAdd(float *a, float *b, float *c) {
  int i = threadIdx.x;
  c[i] = a[i] + b[i];
}

int main() {
  VecAdd<<<1, N>>>(a, b, c);
  return 0;
}
