// by ToxicTT (18112019)
// Credits Mysterion_06_ (Found Pointers on different versions and made them autodetect the versions)

state("Shipping-ThiefGame", "1.0 64Bit")
{
    byte LoadingScreen: "Shipping-ThiefGame.exe", 0x02152950, 0xD8, 0x18, 0x64;
    string25 Map: "Shipping-ThiefGame.exe", 0x02028F70, 0x0;
    float xcoord: "Shipping-ThiefGame.exe", 0x021289F8, 0x80;   
    float ycoord: "Shipping-ThiefGame.exe", 0x021289F8, 0x84;
    float zcoord: "Shipping-ThiefGame.exe", 0x021289F8, 0x88;
}

state("Shipping-ThiefGame", "1.0 32Bit")
{
    byte LoadingScreen: "shipping-thiefgame.exe", 0x0188C7E4, 0x0, 0x34;
    string25 Map: "Shipping-ThiefGame.exe", 0x017F6FC8, 0x0;
    float ycoord: "Shipping-ThiefGame.exe", 0x190CA20;  //Actual Left/Right/Z
    float xcoord: "Shipping-ThiefGame.exe", 0x17F6FE4;  //Actual Forward/Backward/Y
    float zcoord: "Shipping-ThiefGame.exe", 0x190CA1C;  //Actual Height/Y
    
}

state("Shipping-ThiefGame", "1.6 64Bit")
{
    byte LoadingScreen: "shipping-thiefgame.exe", 0x21379C0, 0x64;
    string25 Map: 0x0;
    float ycoord: 0x0;
    float xcoord: 0x0;
    float zcoord: 0x0;
}

update
{
    if (current.Map == "000_Prog_Menus_MainMenu" && vars.splitNum > 0)
        vars.splitNum = 0;  
}

start
{
    if (current.xcoord > -13031.98 && current.xcoord < -13015.78 && current.zcoord > -212.32 && current.zcoord < -212.31)
    {
        vars.splitNum = 0;  
        return true;
    }
}

reset
{
    if (old.Map != "000_Prog_Menus_MainMenu" && current.Map == "000_Prog_Menus_MainMenu"){
        vars.splitNum = 0;  
        return true;
    }
        
}

init
{
    print(modules.First().ModuleMemorySize.ToString());
    switch (modules.First().ModuleMemorySize) {
        default:
        version = "1.0 64Bit";
        break;
        case (34304000):
        version = "1.0 32Bit";
        break;
        case (43986944):
        version = "1.6 64Bit";
        break;
    }
    vars.splitNum = 0;
}

split
{
    if (current.Map == "005_A_Persistent" && current.xcoord == -24870 && vars.splitNum == 0)
    {
        vars.splitNum += 1;
        return true;
    }
    if (old.Map == "005_A_Persistent" && current.Map == "000_Transition_Persistent" && vars.splitNum == 1)
    {
        vars.splitNum += 1;
        return true;
    }

    if (old.Map == "010_A_Persistent" && current.Map == "000_Transition_Persistent" && vars.splitNum == 2)
    {
        vars.splitNum += 1;
        return true;
    }

    if (old.Map == "666_SM_1_Persistent" && current.Map == "000_Transition_Persistent" && vars.splitNum == 3)
    {
        vars.splitNum += 1;
        return true;
    }
    if (old.Map == "021_A_Persistent" && current.Map == "000_Transition_Persistent" && vars.splitNum == 4)
    {
        vars.splitNum += 1;
        return true;
    }

    if (old.Map == "666_SM_1_Persistent" && current.Map == "000_Transition_Persistent" && vars.splitNum == 5)
    {
        vars.splitNum += 1;
        return true;
    }
    if (old.Map == "666_SQ_A_Persistent" && current.Map == "000_Transition_Persistent" && vars.splitNum == 6)
    {
        vars.splitNum += 2;
        return true;
    }
    /*if (current.Map == "035_A_Persistent" && current.xcoord < -3902 && current.xcoord > -3903 && current.ycoord > 10205 && current.ycoord < 10206 && current.zcoord < -3046 && current.zcoord > -3047 && vars.splitNum == 7)
    {
        vars.splitNum += 1;
        return true;
    }*/
    if (old.Map == "035_A_Persistent" && current.Map == "000_Transition_Persistent" && vars.splitNum == 8)
    {
        vars.splitNum += 1;
        return true;
    }

    if (old.Map == "666_SM_1_Persistent" && current.Map == "000_Transition_Persistent" && vars.splitNum == 9)
    {
        vars.splitNum += 1;
        return true;
    }
    if (old.Map == "040_A_Persistent" && current.Map == "000_Transition_Persistent" && vars.splitNum == 10)
    {
        vars.splitNum += 1;
        return true;
    }
    if (current.Map == "040_B_Persistent" && current.xcoord > 20695.73 && current.xcoord < 20695.75 && current.ycoord > 1896.42 && current.ycoord < 1896.43 && current.zcoord < -6790.78 && current.zcoord > -6790.79 && vars.splitNum == 11)
    {
        vars.splitNum += 1;
        return true;
    }
    
    if (old.Map == "040_C_Persistent" && current.Map == "000_Transition_Persistent" && vars.splitNum == 12)
    {
        vars.splitNum += 1;
        return true;
    }

    if (old.Map == "666_SM_1_Persistent" && current.Map == "000_Transition_Persistent" && vars.splitNum == 13)
    {
        vars.splitNum += 1;
        return true;
    }
    if (old.Map == "666_SQ_A_Persistent" && current.Map == "000_Transition_Persistent" && vars.splitNum == 14)
    {
        vars.splitNum += 1;
        return true;
    }
    if (current.Map == "055_A_Persistent" && current.xcoord > 1576 && current.xcoord < 1637 && current.ycoord < -21050 && current.zcoord > -254 && current.zcoord < -252 && vars.splitNum == 15)
    {
        vars.splitNum += 1;
        return true;
    }
    if (old.Map == "055_A_Persistent" && current.Map == "000_Transition_Persistent" && vars.splitNum == 16)
    {
        vars.splitNum += 1;
        return true;
    }

    if (old.Map == "666_SM_1_Persistent" && current.Map == "000_Transition_Persistent" && vars.splitNum == 17)
    {
        vars.splitNum += 1;
        return true;
    }
    if (old.Map == "060_A_BaronCinematic" && current.Map == "000_Transition_Persistent" && vars.splitNum == 18)
    {
        vars.splitNum += 1;
        return true;
    }
    if (old.Map == "060_B_Persistent" && current.Map == "000_Transition_Persistent" && vars.splitNum == 19)
    {
        vars.splitNum += 1;
        return true;
    }
    if (old.Map == "065_Persistent" && current.Map == "000_Transition_Persistent" && vars.splitNum == 20)
    {
        vars.splitNum += 1;
        return true;
    }

    if (old.Map == "666_SM_1_Persistent" && current.Map == "000_Transition_Persistent" && vars.splitNum == 21)
    {
        vars.splitNum += 2;
        return true;
    }
    /*if (current.Map == "070_A_Persistent" && current.xcoord == -13550 && current.ycoord == -5040 && current.zcoord == -12160 && vars.splitNum == 22)
    {
        vars.splitNum += 1;
        return true;
    }*/
    if (current.Map == "070_A_Persistent" && current.xcoord > -8399.54 && current.xcoord < -8399.53 && current.ycoord > 3893.95 && current.ycoord < 3893.96 && current.zcoord < -7589.75 && current.zcoord > -7589.76 && vars.splitNum == 23)
    {
        vars.splitNum += 1;
        return true;
    }
    if (old.Map == "070_A_Persistent" && current.Map == "000_Transition_Persistent" && vars.splitNum == 24)
    {
        vars.splitNum += 1;
        return true;
    }

    if (old.Map == "081_A_Persistent" && current.Map == "000_Transition_Persistent" && vars.splitNum == 25)
    {
        vars.splitNum += 1;
        return true;
    }
    if (current.xcoord > -11149.561 && current.xcoord < -11149.560 && current.ycoord > 3815.57 && current.ycoord < 3815.58 && current.zcoord > 3673.42 && current.zcoord < 3673.43 && vars.splitNum == 26)
    {
        vars.splitNum += 1;
        return true;
    }   
}

isLoading
{
    if(current.LoadingScreen == 0){
        return true;
    }else{
        return false;
    }
}
