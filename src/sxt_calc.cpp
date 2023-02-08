
#include "sxt_calc_impl.h"
#include <sxt_calc/sxt_calc.h>

#include <boost/date_time.hpp>

#include <boost/system/error_code.hpp>


std::wstring FormatTime(boost::posix_time::ptime now)
{
    using namespace boost::posix_time;
    static std::locale loc(std::wcout.getloc(),
                           new wtime_facet(L"%Y_%m_%d \n %H:%M:%S"));

    std::basic_stringstream<wchar_t> wss;
    wss.imbue(loc);
    wss << now;
    return wss.str();
}


// https://theboostcpplibraries.com/boost.system
using namespace boost::system;
void fail(error_code &ec)
{
    ec = errc::make_error_code(errc::not_supported);
}

namespace sxt_calc {
    void hello() {
        helloImpl();
        using namespace boost::posix_time;
        ptime now = second_clock ::universal_time();
        std::wcout << FormatTime(now) << '\n';

        error_code ec;
        fail(ec);
        std::cout << ec.value() << '\n';
    }
}
