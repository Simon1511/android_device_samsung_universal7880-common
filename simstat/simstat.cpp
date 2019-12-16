/*
 * Copyright (C) 2019 The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

#include <stdlib.h>
#include <string.h>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include <android-base/strings.h>
#include <cutils/properties.h>
#include <android-base/file.h>

using android::base::ReadFileToString;

int main(int, char**)
{

    const char *dualsim = "/sys/module/modem_ctrl_ss310ap/parameters/ds_detect";
    std::string line;

    if (ReadFileToString(dualsim, &line)) {
        if (line.find("2") != std::string::npos) {
            property_set("ro.multisim.simslotcount", "2");
            property_set("ro.vendor.multisim.simslotcount", "2");
            property_set("persist.radio.multisim.config", "dsds");
        }
        if (line.find("1") != std::string::npos) {
            property_set("ro.multisim.simslotcount", "1");
            property_set("ro.vendor.multisim.simslotcount", "1");
            property_set("persist.radio.multisim.config", "ss");
        }
    }
    //return 0;
}

