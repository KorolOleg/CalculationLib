
#include "sxt_calc_impl.h"
#include <sxt_calc/sxt_calc.h>

#include <boost/date_time.hpp>


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


namespace sxt_calc {
    void hello() {
        helloImpl();
        using namespace boost::posix_time;
        ptime now = second_clock ::universal_time();
        std::wcout << FormatTime(now) << '\n';
    }
}
