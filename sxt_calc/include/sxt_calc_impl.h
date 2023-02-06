#pragma once

#include <iostream>
#include <nlohmann/json.hpp>

using json = nlohmann::json;

namespace sxt_calc {
    inline void helloImpl() {
        json hello = json::parse(R"(
        {
            "greeting": "Hello world!",
            "happy": true
        }
        )");

        std::cout << hello["greeting"] << '\n';
    }
}