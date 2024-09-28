{ config, lib, ... }:
{
  imports = [ ../. ];
  boot.kernelParams = lib.mkIf (config.hardware.intelgpu.driver == "i915") [
    "i915.enable_guc=3"
  ];
}
