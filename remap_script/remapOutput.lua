local function remapOutput(a, b)
    hub.setPanelInteger(b, hub.getSimInteger(a))
end

hub.registerOutputCallback(function()
    local acftName = getSimString("MetadataStart/_ACFT_NAME")
    if acftName == "A-10C" then
        remapOutput("A-10C/MASTER_CAUTION", "Custom-Remap/MASTER_CAUTION_LT")
        remapOutput("A-10C/GUN_READY", "Custom-Remap/MASTER_MODE_AG_LT")
    end
    if acftName == "AV8BNA" then
        remapOutput("AV8BNA/VSTOL_SEL", "Custom-Remap/MASTER_MODE_AA_LT")
        remapOutput("AV8BNA/NAV_SEL", "Custom-Remap/MASTER_MODE_NAV_LT")
        remapOutput("AV8BNA/AG_SEL", "Custom-Remap/MASTER_MODE_AG_LT")
        remapOutput("AV8BNA/M_Caution", "Custom-Remap/MASTER_CAUTION_LT")
        remapOutput("AV8BNA/M_Warning", "Custom-Remap/MASTER_WARNING_LT")
    end
    if acftName == "FA-18C_hornet" then
        remapOutput("FA-18C_hornet/MASTER_MODE_AA_LT", "Custom-Remap/MASTER_MODE_AA_LT")
        remapOutput("FA-18C_hornet/MASTER_MODE_AG_LT", "Custom-Remap/MASTER_MODE_AG_LT")
        remapOutput("FA-18C_hornet/MASTER_CAUTION_LT", "Custom-Remap/MASTER_CAUTION_LT")
        remapOutput("FA-18C_hornet/LANDING_GEAR_HANDLE_LT", "Custom-Remap/MASTER_WARNING_LT")
    end
end)