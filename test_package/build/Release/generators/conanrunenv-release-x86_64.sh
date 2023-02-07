echo "echo Restoring environment" > "/home/olegkorol/dev/play_ground/CalculationLib/test_package/build/Release/generators/deactivate_conanrunenv-release-x86_64.sh"
for v in LD_LIBRARY_PATH DYLD_LIBRARY_PATH PATH
do
    is_defined="true"
    value=$(printenv $v) || is_defined="" || true
    if [ -n "$value" ] || [ -n "$is_defined" ]
    then
        echo export "$v='$value'" >> "/home/olegkorol/dev/play_ground/CalculationLib/test_package/build/Release/generators/deactivate_conanrunenv-release-x86_64.sh"
    else
        echo unset $v >> "/home/olegkorol/dev/play_ground/CalculationLib/test_package/build/Release/generators/deactivate_conanrunenv-release-x86_64.sh"
    fi
done


export LD_LIBRARY_PATH="/home/olegkorol/.conan/data/CalculationLib/1.0/_/_/package/a3fdedbb861fa07c3ffd02177cbb7d6cdcaba8e6/lib:/home/olegkorol/.conan/data/boost/1.81.0/_/_/package/9bb382e9c85821936d59f1c4ea5134768df38de2/lib:/home/olegkorol/.conan/data/zlib/1.2.13/_/_/package/dfbe50feef7f3c6223a476cd5aeadb687084a646/lib:/home/olegkorol/.conan/data/bzip2/1.0.8/_/_/package/c32092bf4d4bb47cf962af898e02823f499b017e/lib:/home/olegkorol/.conan/data/libbacktrace/cci.20210118/_/_/package/dfbe50feef7f3c6223a476cd5aeadb687084a646/lib:$LD_LIBRARY_PATH"
export DYLD_LIBRARY_PATH="/home/olegkorol/.conan/data/CalculationLib/1.0/_/_/package/a3fdedbb861fa07c3ffd02177cbb7d6cdcaba8e6/lib:/home/olegkorol/.conan/data/boost/1.81.0/_/_/package/9bb382e9c85821936d59f1c4ea5134768df38de2/lib:/home/olegkorol/.conan/data/zlib/1.2.13/_/_/package/dfbe50feef7f3c6223a476cd5aeadb687084a646/lib:/home/olegkorol/.conan/data/bzip2/1.0.8/_/_/package/c32092bf4d4bb47cf962af898e02823f499b017e/lib:/home/olegkorol/.conan/data/libbacktrace/cci.20210118/_/_/package/dfbe50feef7f3c6223a476cd5aeadb687084a646/lib:$DYLD_LIBRARY_PATH"
export PATH="/home/olegkorol/.conan/data/bzip2/1.0.8/_/_/package/c32092bf4d4bb47cf962af898e02823f499b017e/bin:$PATH"