require("cmake-tools").setup({
  cmake_use_preset = false,
  cmake_generate_options= {"-DCMAKE_EXPORT_COMPILE_COMMANDS=ON"},

})
