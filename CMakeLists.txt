cmake_minimum_required(VERSION 3.12...3.23)

project(
    vanity_key_gen
    LANGUAGES CXX CUDA
    VERSION 0.1.0
    DESCRIPTION "Vanity key generator for Onion V3 addresses, on the GPU"
    HOMEPAGE_URL "https://github.com/Phytolizer/vanity-key-gen"
)

add_executable(vanity_key_gen src/main.cu)
target_compile_features(vanity_key_gen PRIVATE cxx_std_20)
set_target_properties(vanity_key_gen PROPERTIES CUDA_SEPARABLE_COMPILATION ON)

