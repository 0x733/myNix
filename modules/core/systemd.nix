{ config, pkgs, ... }:

{
  systemd.oomd.enable = true;
  systemd.oomd.enableRootSlice = true;
  systemd.oomd.enableSystemSlice = true;

  systemd.slices."-.slice".sliceConfig = {
    MemoryMax = "3G";
    OOMPolicy = "kill";
  };
}
