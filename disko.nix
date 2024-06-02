{
  disko.devices = {
    disk = {
      my-disk = {
      	# CHANGE IF NECESSARY
        device = "/dev/nvme0n1";
        type = "disk";
        content = {
          type = "gpt";
          partitions = {
            ESP = {
              type = "EF00";
              size = "256M";
              content = {
               type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
              };
            };

            swap = {
              # CHANGE IF NECESSARY
              size = "16G";
              content = {
                type = "swap";
                resumeDevice = true;
              };
            };

            root = {
              size = "100%";
              content = {
                type = "filesystem";
                format = "btrfs";
                mountpoint = "/";
              };
            };
          };
        };
      };
    };
  };
}
