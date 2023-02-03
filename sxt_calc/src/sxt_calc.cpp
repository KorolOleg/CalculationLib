#include "../include/sxt_calc.h"

#include <iostream>

#include <nlohmann/json.hpp>

using json = nlohmann::json;

namespace sxt_calc {
    void hello() {
        json hello = json::parse(R"(
        {
            "greeting": "Hello world!",
            "happy": true
        }
    )");

        std::cout << hello["greeting"] << '\n';
    }
}
