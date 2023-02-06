### Main ideas
#### Project structure
Root contains CMakeLists wrapper (enable/disable tests, set compiler flags applied project-wise)
- sxt_calc - library for the packaging and distribution
- test - unit tests
- test_package - verify correct packaging and distribution

#### Workflow
[workflow](docs/steps.md)


#### 3rd party dependencies
With "yes" marked dependencies that are included to the lib,

| dependency                            |    version    | conan |
|---------------------------------------|:-------------:|------:|
| Boost::date_time, iostreams, system, program_options | 1.81.0 |   yes |
| nlohmann_json                         |   3.10.3    |   yes |
| lograffe::logger                      |       |       |
| base64                                |       |       |
| PicoSHA2                              |       |       |
| ApprovalTests                         |       |       |
| Catch2                                |       |       |
| Trompeloeil                           |       |       |

https://conan.io/