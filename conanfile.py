#Configures Conan 
#conanfile.py more verstale alternative to conanfile.txt
#conan library compat with PY 3.10.10
from conan import ConanFile


class DaVinciRecipe(ConanFile):
    'project dependent on these'
    settings = "os","compiler","build_type","arch"

    'takes dependencies and crafts them into format that build system understands'
    generators = "PremakeDeps" 

    'project requirements'
    def requirements(self):
        self.requires("spdlog/1.11.0")
        self.requires("lz4/1.9.4")

