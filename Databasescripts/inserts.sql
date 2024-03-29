INSERT INTO `procesador` (`ID`, `modelo`, `marca`, `nucleos`, `socket`, `igpu`, `disipador`, `consumo`, `link`, `imagen`) VALUES ('1', 'Ryzen 5 7600 ', 'AMD', '(6), (12)', 'AM5', '1', '1', '65 W', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Procesadores/Procesadores-para-PC/Procesador-AMD-Ryzen-5-7600-con-Graficos-Radeon-S-AM5-3-8GHz-Six-Core-32MB-L3-Cache-con-Disipador-Wraith-Stealth.html', '7600.jpg');
INSERT INTO `procesador` (`ID`, `modelo`, `marca`, `nucleos`, `socket`, `igpu`, `disipador`, `consumo`, `link`, `imagen`) VALUES ('2', 'Ryzen 5 7600X', 'AMD', '(6), (12)', 'AM5', '1', '0', '105 W', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Procesadores/Procesadores-para-PC/Procesador-AMD-Ryzen-5-7600X-S-AM5-4-70GHz-Six-Core-32MB-L3-Cache-no-Incluye-Disipador.html', '7600X.jpg');
INSERT INTO `procesador` (`ID`, `modelo`, `marca`, `nucleos`, `socket`, `igpu`, `disipador`, `consumo`, `link`, `imagen`) VALUES ('3', 'Ryzen 7 7700', 'AMD', '(8), (16)', 'AM5', '1', '1', '65 W ', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Procesadores/Procesadores-para-PC/Procesador-AMD-Ryzen-7-7700-S-AM5-3-80GHz-8-Core-32MB-Cache-con-Disipador-Wraith-Prism.html', '7700.jpg');

INSERT INTO `placa` (`ID`, `modelo`, `marca`, `socket`, `forma`, `ddr`, `chipset`, `slots_ram`, `wifi`, `bluetooth`, `slots_nvme`, `link`, `imagen`) VALUES ('1', 'PRO A620M-E', 'MSI', 'AM5', 'Micro-ATX', 'DDR5', 'A620', '2', '0', '0', '1', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Tarjetas-Madre/Tarjeta-Madre-MSI-Mini-ATX-PRO-A620M-E-S-AM5-AMD-A620-HDMI-96GB-DDR5-para-AMD.html', 'PRO A620M-E.jpg');
INSERT INTO `placa` (`ID`, `modelo`, `marca`, `socket`, `forma`, `ddr`, `chipset`, `slots_ram`, `wifi`, `bluetooth`, `slots_nvme`, `link`, `imagen`) VALUES ('2', 'A620M S2H', 'Gigabyte', 'AM5', 'Micro-ATX', 'DDR5', 'A620', '2', '0', '0', '1', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Tarjetas-Madre/Tarjeta-Madre-Gigabyte-Micro-ATX-A620M-S2H-S-AM5-AMD-A620-HDMI-96GB-DDR5-para-AMD.html', 'A620M S2H.jpg');
INSERT INTO `placa` (`ID`, `modelo`, `marca`, `socket`, `forma`, `ddr`, `chipset`, `slots_ram`, `wifi`, `bluetooth`, `slots_nvme`, `link`, `imagen`) VALUES ('3', 'A620M-HDV/M.2', 'ASRock', 'AM5', 'Micro-ATX', 'DDR5', 'A620', '2', '0', '0', '1', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Tarjetas-Madre/Tarjeta-Madre-ASRock-Micro-ATX-A620M-HDV-M-2-S-AM5-AMD-A620-HDMI-96GB-DDR5-para-AMD.html', 'A620M-HDV.jpg');

INSERT INTO `almacenamiento sata` (`ID`, `modelo`, `marca`, `capacidad`, `velocidad`, `link`, `imagen`) VALUES ('1', 'WDS240G3G0A', 'Western Digital', '240 GB', '545 MB/s', 'https://www.cyberpuerta.mx/Computo-Hardware/Discos-Duros-SSD-NAS/SSD/SSD-Western-Digital-WD-Green-240GB-SATA-III-2-5.html', 'WDS240G3G0A.jpg');
INSERT INTO `almacenamiento sata` (`ID`, `modelo`, `marca`, `capacidad`, `velocidad`, `link`, `imagen`) VALUES ('2', 'SanDisk Plus', 'Western Digital', '240 GB', '530 MB/s', 'https://www.cyberpuerta.mx/Computo-Hardware/Discos-Duros-SSD-NAS/SSD/SSD-SanDisk-Plus-240GB-SATA-III-2-5-7mm.html#emdetails_attributes', 'SanDisk Plus.jpg');
INSERT INTO `almacenamiento sata` (`ID`, `modelo`, `marca`, `capacidad`, `velocidad`, `link`, `imagen`) VALUES ('3', '870 EVO', 'Samsung', '250 GB', '560 MB/s', 'https://www.cyberpuerta.mx/Computo-Hardware/Discos-Duros-SSD-NAS/SSD/SSD-Samsung-870-EVO-250GB-SATA-III-2-5-7mm.html', '870 EVO.jpg');

INSERT INTO `disipador` (`ID`, `modelo`, `marca`, `socket`, `link`, `imagen`) VALUES ('1', 'HYPER 212', 'Cooler Master', 'AM5', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Enfriamiento-y-Ventilacion/Disipadores-para-CPU/Ventilador-Cooler-Master-HYPER-212-120mm-1800RPM-Negro-Plata.html', 'HYPER 212.png');
INSERT INTO `disipador` (`ID`, `modelo`, `marca`, `socket`, `link`, `imagen`) VALUES ('2', 'Pure Rock 2 FX', 'be quiet!', 'AM5', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Enfriamiento-y-Ventilacion/Disipadores-para-CPU/Disipador-CPU-be-quiet-Pure-Rock-2-FX-120mm-2000RPM-Negro.html', 'Pure Rock 2 FX.jpg');
INSERT INTO `disipador` (`ID`, `modelo`, `marca`, `socket`, `link`, `imagen`) VALUES ('3', 'NH-U12S Redux', 'Noctua', 'AM5', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Enfriamiento-y-Ventilacion/Disipadores-para-CPU/Disipador-CPU-Noctua-NH-U12S-Redux-120mm-1700RPM-Gris.html', 'NH-U12S Redux.jpg');

INSERT INTO `fuentes` (`ID`, `modelo`, `marca`, `potencia`, `certificacion`, `link`, `imagen`) VALUES ('1', 'P450B', 'Gigabyte', '450W', '80 PLUS Bronze', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Fuentes-de-Poder-para-PC-s/Fuente-de-Poder-Gigabyte-P450B-80-PLUS-Bronze-20-4-pin-ATX-120mm-450W.html', 'P450B.jpg');
INSERT INTO `fuentes` (`ID`, `modelo`, `marca`, `potencia`, `certificacion`, `link`, `imagen`) VALUES ('2', 'CV550', 'Corsair', '550W', '80 PLUS Bronze', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Fuentes-de-Poder-para-PC-s/Fuente-de-Poder-Corsair-CV550-80-PLUS-Bronze-ATX-120mm-550W.html', 'CV550.jpg');
INSERT INTO `fuentes` (`ID`, `modelo`, `marca`, `potencia`, `certificacion`, `link`, `imagen`) VALUES ('3', 'TUF Gaming 550B', 'ASUS', '550W', '80 PLUS Bronze', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Fuentes-de-Poder-para-PC-s/Fuente-de-Poder-ASUS-TUF-Gaming-550B-80-PLUS-Bronze-20-4-pin-ATX-150mm-550W.html', 'TUF Gaming 550B.jpg');

INSERT INTO `gabinete` (`ID`, `modelo`, `marca`, `dimensiones`, `factor_de_forma`, `ventana`, `link`, `imagen`) VALUES ('1', '3000D', 'Corsair', '466 mm x 462 mm x 230 mm', 'ATX', '1', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Gabinetes/Gabinete-Corsair-3000D-Airflow-con-Ventana-Midi-Tower-ATX-USB-3-0-sin-Fuente-2-Ventiladores-Instalados-Negro.html#emdetails_attributes', '3000D.jpg');
INSERT INTO `gabinete` (`ID`, `modelo`, `marca`, `dimensiones`, `factor_de_forma`, `ventana`, `link`, `imagen`) VALUES ('2', 'Pure Base 500', 'be quiet!', '443 mm x 450 mm x 231 mm', 'ATX', '1', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Gabinetes/Gabinete-be-quiet-Pure-Base-500-con-Ventana-Midi-Tower-ATX-Mini-ATX-Mini-ITX-2x-USB-sin-Fuente-2-Ventiladores-Instalados-Negro.html#emdetails_attributes', 'Pure Base 500.jpg');
INSERT INTO `gabinete` (`ID`, `modelo`, `marca`, `dimensiones`, `factor_de_forma`, `ventana`, `link`, `imagen`) VALUES ('3', 'Prime AP201', 'ASUS', '460 mm x 350 mm x 205 mm', 'Micro ATX', '0', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Gabinetes/Gabinete-ASUS-Prime-AP201-Mini-Tower-Micro-ATX-Mini-ITX-USB-3-2-sin-Fuente-1-Ventilador-Instalado-Negro.html#emdetails_attributes', 'Prime AP201.jpg');

INSERT INTO `ram` (`ID`, `modelo`, `marca`, `tipo_ddr`, `frecuencia`, `consumo`, `link`, `imagen`) VALUES ('1', 'Signature Premium', 'Patriot', 'DDR5', '4800MHz', '1.1 V', 'https://www.cyberpuerta.mx/Computo-Hardware/Memorias-RAM-y-Flash/Memorias-RAM-para-PC/Memoria-RAM-Patriot-Signature-Premium-DDR5-4800MHz-8GB-Non-ECC-CL19.html', 'Signature Premium.jpg');
INSERT INTO `ram` (`ID`, `modelo`, `marca`, `tipo_ddr`, `frecuencia`, `consumo`, `link`, `imagen`) VALUES ('2', 'Fury Beast', 'Kingston', 'DDR5', '4800 MHz', '1.1 V', 'https://www.cyberpuerta.mx/Computo-Hardware/Memorias-RAM-y-Flash/Memorias-RAM-para-PC/Memoria-RAM-Kingston-Fury-Beast-Black-DDR5-4800-MHz-8GB-1x-8GB-ECC-CL38-XMP.html#emdetails_attributes', 'Fury Beast.jpg');
INSERT INTO `ram` (`ID`, `modelo`, `marca`, `tipo_ddr`, `frecuencia`, `consumo`, `link`, `imagen`) VALUES ('3', 'T-Force VULCAN', 'Team Group', 'DDR5', '5200MHz', '1.25 V', 'https://www.cyberpuerta.mx/Computo-Hardware/Memorias-RAM-y-Flash/Memorias-RAM-para-PC/Memoria-RAM-Team-Group-T-Force-VULCAN-Black-DDR5-5200MHz-16GB-Non-ECC-CL40-XMP.html#emdetails_attributes', 'T-Force VULCAN.jpg');

INSERT INTO `ssdm2` (`ID`, `modelo`, `marca`, `capacidad`, `velocidad`, `link`, `imagen`) VALUES ('1', 'BarraCuda', 'Seagate', '250GB', '3200 MB/s', 'https://www.cyberpuerta.mx/Computo-Hardware/Discos-Duros-SSD-NAS/SSD/SSD-Seagate-BarraCuda-PCIe-NVMe-250GB-PCI-Express-4-0-M-2.html', 'BarraCuda.jpg');
INSERT INTO `ssdm2` (`ID`, `modelo`, `marca`, `capacidad`, `velocidad`, `link`, `imagen`) VALUES ('2', 'P3', 'Crucial', '500GB', '3500 MB/s', 'https://www.cyberpuerta.mx/Computo-Hardware/Discos-Duros-SSD-NAS/SSD/SSD-Crucial-P3-NVMe-500GB-PCI-Express-3-0-M-2.html', 'P3.jpg');
INSERT INTO `ssdm2` (`ID`, `modelo`, `marca`, `capacidad`, `velocidad`, `link`, `imagen`) VALUES ('3', '980 NVMe', 'Samsung', '250GB', '2900 MB/s', 'https://www.cyberpuerta.mx/Computo-Hardware/Discos-Duros-SSD-NAS/SSD/SSD-Samsung-980-NVMe-250GB-PCI-Express-3-0-M-2.html', '980 NVMe.jpg');

INSERT INTO `grafica` (`ID`, `modelo`, `marca`, `ensamblador`, `vram`, `gddr`, `displayport`, `hdmi`, `slots`, `consumo`, `longitud`, `link`, `imagen`) VALUES ('1', 'ARC A750', 'Intel', 'Intel', '8 GB', 'GDDR6 ', '1', '1', '2', '225 W', '268.6 mm', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Tarjetas-de-Video/Tarjeta-de-Video-Intel-ARC-A750-8GB-256-bit-GDDR6-PCI-Express-x16-4-0.html#emdetails_attributes', 'ARC A750.jpg');
INSERT INTO `grafica` (`ID`, `modelo`, `marca`, `ensamblador`, `vram`, `gddr`, `displayport`, `hdmi`, `slots`, `consumo`, `longitud`, `link`, `imagen`) VALUES ('2', 'RX 7600 Pulse', 'AMD', 'Sapphire', '8GB', 'GDDR6', '3', '1', '2', '550 W', '240 mm', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Tarjetas-de-Video/Tarjeta-de-Video-Sapphire-AMD-Radeon-RX-7600-Pulse-8GB-128-bit-GDDR6-PCI-Express-4-0.html', 'RX 7600 Pulse.jpg');
INSERT INTO `grafica` (`ID`, `modelo`, `marca`, `ensamblador`, `vram`, `gddr`, `displayport`, `hdmi`, `slots`, `consumo`, `longitud`, `link`, `imagen`) VALUES ('3', 'RTX 4060', 'NVIDIA', 'Zotac', '8GB', 'GDDR6', '3', '1', '2', '500 W', '221.4 mm', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Tarjetas-de-Video/Tarjeta-de-Video-Zotac-NVIDIA-GeForce-RTX-4060-8GB-Twin-Edge-OC-8GB-128-bit-GDDR6-PCI-Express-4-0.html', 'RTX 4060.jpg');

INSERT INTO `ventilador` (`ID`, `modelo`, `marca`, `medida`, `link`, `imagen`) VALUES ('1', 'MasterFan MF120 S2 ARGB', 'Cooler Master', '120 mm', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Enfriamiento-y-Ventilacion/Ventiladores/Ventilador-Cooler-Master-MasterFan-MF120-S2-ARGB-120mm-1200RPM-Negro.html', 'MasterFan MF120 S2 ARGB.jpg');
INSERT INTO `ventilador` (`ID`, `modelo`, `marca`, `medida`, `link`, `imagen`) VALUES ('2', 'Pure Wings 2', 'quiet!', '120 mm', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Enfriamiento-y-Ventilacion/Ventiladores/Ventilador-be-quiet-Pure-Wings-2-PWM-120mm-2000RPM-Negro.html', 'Pure Wings 2.jpg');
INSERT INTO `ventilador` (`ID`, `modelo`, `marca`, `medida`, `link`, `imagen`) VALUES ('3', 'NF-S12B Redux', 'Noctua', '120 mm', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Enfriamiento-y-Ventilacion/Ventiladores/Ventilador-Noctua-NF-S12B-Redux-1200-PWM-120mm-1200RPM-Gris.html', 'NF-S12B Redux.jpg');

INSERT INTO `compatibilidad_placa_disipador` (`ID_Principal`, `ID_disipador`) VALUES ('1', '1');
INSERT INTO `compatibilidad_placa_disipador` (`ID_Principal`, `ID_disipador`) VALUES ('2', '1');
INSERT INTO `compatibilidad_placa_disipador` (`ID_Principal`, `ID_disipador`) VALUES ('3', '1');
INSERT INTO `compatibilidad_placa_disipador` (`ID_Principal`, `ID_disipador`) VALUES ('1', '2');
INSERT INTO `compatibilidad_placa_disipador` (`ID_Principal`, `ID_disipador`) VALUES ('2', '2');
INSERT INTO `compatibilidad_placa_disipador` (`ID_Principal`, `ID_disipador`) VALUES ('3', '2');
INSERT INTO `compatibilidad_placa_disipador` (`ID_Principal`, `ID_disipador`) VALUES ('1', '3');
INSERT INTO `compatibilidad_placa_disipador` (`ID_Principal`, `ID_disipador`) VALUES ('2', '3');
INSERT INTO `compatibilidad_placa_disipador` (`ID_Principal`, `ID_disipador`) VALUES ('3', '3');


INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('1', '1');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('1', '2');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('1', '3');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('2', '1');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('2', '2');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('2', '3');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('3', '1');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('3', '2');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('3', '3');

INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('2', '2');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('2', '1');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('2', '3');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('3', '1');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('3', '2');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('3', '3');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('1', '1');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('1', '2');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('1', '3');

INSERT INTO `compatibilidad_procesador_placa` (`ID_Principal`, `ID_placa`) VALUES ('1', '1');
INSERT INTO `compatibilidad_procesador_placa` (`ID_Principal`, `ID_placa`) VALUES ('1', '2');
INSERT INTO `compatibilidad_procesador_placa` (`ID_Principal`, `ID_placa`) VALUES ('1', '3');
INSERT INTO `compatibilidad_procesador_placa` (`ID_Principal`, `ID_placa`) VALUES ('2', '1');
INSERT INTO `compatibilidad_procesador_placa` (`ID_Principal`, `ID_placa`) VALUES ('2', '2');
INSERT INTO `compatibilidad_procesador_placa` (`ID_Principal`, `ID_placa`) VALUES ('2', '3');
INSERT INTO `compatibilidad_procesador_placa` (`ID_Principal`, `ID_placa`) VALUES ('3', '1');
INSERT INTO `compatibilidad_procesador_placa` (`ID_Principal`, `ID_placa`) VALUES ('3', '2');
INSERT INTO `compatibilidad_procesador_placa` (`ID_Principal`, `ID_placa`) VALUES ('3', '3');

INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('1', '1');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('1', '2');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('1', '3');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('2', '1');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('2', '2');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('2', '3');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('3', '1');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('3', '2');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('3', '3');

INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('1', '1');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('1', '2');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('1', '3');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('2', '1');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('2', '2');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('2', '3');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('3', '1');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('3', '2');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('3', '3');

INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('1', '1');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('1', '2');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('1', '3');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('2', '1');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('2', '2');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('2', '3');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('3', '1');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('3', '2');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('3', '3');

INSERT INTO `gabinete` (`ID`, `modelo`, `marca`, `dimensiones`, `factor_de_forma`, `ventana`, `link`, `imagen`) VALUES ('4', 'H5 Flow', 'NZXT', '464 mm x 446 mm x 227 mm', 'ATX', '1', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Gabinetes/Gabinete-NZXT-H5-Flow-con-Ventana-Midi-Tower-Mini-ITX-Micro-ATX-ATX-EATX-USB-3-2-sin-Fuente-Negro.html#emdetails_attributes', 'H5 Flow.jpg');
INSERT INTO `gabinete` (`ID`, `modelo`, `marca`, `dimensiones`, `factor_de_forma`, `ventana`, `link`, `imagen`) VALUES ('5', 'LANCOOL 216 RGB', 'Lian Li', '491.7 mm x 480.9 mm x 235 mm', 'ATX', '1', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Gabinetes/Gabinete-Lian-Li-LANCOOL-216-RGB-con-Ventana-Midi-Tower-ATX-Micro-ATX-Mini-ITX-USB-3-0-sin-Fuente-3-Ventiladores-Instalados-2x-ARGB-Blanco.html', 'LANCOOL 216 RGB.jpg');

INSERT INTO `almacenamiento sata` (`ID`, `modelo`, `marca`, `capacidad`, `velocidad`, `link`, `imagen`) VALUES ('4', 'GX2', 'Team Group', '2TB', '550 MB/s', 'https://www.cyberpuerta.mx/Computo-Hardware/Discos-Duros-SSD-NAS/SSD/SSD-Team-Group-GX2-2TB-SATA-III-2-5-7mm.html', 'GX2.jpg');
INSERT INTO `almacenamiento sata` (`ID`, `modelo`, `marca`, `capacidad`, `velocidad`, `link`, `imagen`) VALUES ('5', 'A400', 'Kingston', '960 GB', '500 MB/s', 'https://www.cyberpuerta.mx/Computo-Hardware/Discos-Duros-SSD-NAS/SSD/SSD-Kingston-A400-960GB-SATA-III-2-5-7mm.html', 'A400.jpg');

INSERT INTO `ssdm2` (`ID`, `modelo`, `marca`, `capacidad`, `velocidad`, `link`, `imagen`) VALUES ('4', 'NV2', 'Kingston', '2TB', '3500 MB/s', 'https://www.cyberpuerta.mx/Computo-Hardware/Discos-Duros-SSD-NAS/SSD/SSD-Kingston-NV2-NVMe-2TB-PCI-Express-4-0-M-2.html', 'NV2.jpg');
INSERT INTO `ssdm2` (`ID`, `modelo`, `marca`, `capacidad`, `velocidad`, `link`, `imagen`) VALUES ('5', 'CARDEA A440 PRO GRAPHENE', 'Team Group', '1TB', '7200 MB/s', 'https://www.cyberpuerta.mx/Computo-Hardware/Discos-Duros-SSD-NAS/SSD/TM8FPR001T0C129.html', 'CARDEA A440 PRO GRAPHENE.jpg');

INSERT INTO `disipador` (`ID`, `modelo`, `marca`, `socket`, `link`, `imagen`) VALUES ('4', 'T120', 'NZXT', 'LGA 1700', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Enfriamiento-y-Ventilacion/Disipadores-para-CPU/Disipador-CPU-NZXT-T120-120mm-500-1800RPM-Blanco.html', 'T120.jpg');
INSERT INTO `disipador` (`ID`, `modelo`, `marca`, `socket`, `link`, `imagen`) VALUES ('5', 'Contac 9 SE', 'Thermaltake', 'LGA 1700', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Enfriamiento-y-Ventilacion/Disipadores-para-CPU/Disipador-CPU-Thermaltake-Contac-9-SE-92mm-800-2000RPM-Negro-Blanco.html', 'Contac 9 SE.jpg');

INSERT INTO `grafica` (`ID`, `modelo`, `marca`, `ensamblador`, `vram`, `gddr`, `displayport`, `hdmi`, `slots`, `consumo`, `longitud`, `link`, `imagen`) VALUES ('4', 'RX 7700 XT', 'AMD', 'Sapphire', '12GB', 'GDDR6', '2', '2', '2', '700 W', '280 mm', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Tarjetas-de-Video/Tarjeta-de-Video-Sapphire-PULSE-AMD-Radeon-RX-7700-XT-Gaming-12GB-192-bit-GDDR6-PCI-Express-4-0.html#emdetails_attributes', 'RX 7700 XT.jpg');
INSERT INTO `grafica` (`ID`, `modelo`, `marca`, `ensamblador`, `vram`, `gddr`, `displayport`, `hdmi`, `slots`, `consumo`, `longitud`, `link`, `imagen`) VALUES ('5', 'RTX 4070', 'NVIDIA', 'Zotac', '12GB', 'GDDR6', '3', '1', '2', '600 W', '225.5 mm', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Tarjetas-de-Video/Tarjeta-de-Video-Zotac-NVIDIA-GAMING-GeForce-RTX-4070-Twin-Edge-12GB-192-bit-GDDR6X-PCI-Express-4-0-x16.html#emdetails_attributes', 'RTX 4070.jpg');
UPDATE `grafica` SET `consumo` = '500 W' WHERE (`ID` = '1');

INSERT INTO `placa` (`ID`, `modelo`, `marca`, `socket`, `forma`, `ddr`, `chipset`, `slots_ram`, `wifi`, `bluetooth`, `slots_nvme`, `link`, `imagen`) VALUES ('4', 'PRIME B760M-A AX', 'ASUS', 'LGA 1700', 'Micro-ATX', 'DDR5', 'B760', '4', '1', '1', '2', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Tarjetas-Madre/Tarjeta-Madre-ASUS-Micro-ATX-PRIME-B760M-A-AX-S-1700-Intel-B760-HDMI-128GB-DDR5-para-Intel.html#emdetails_attributes', 'PRIME B760M-A AX.jpg');
INSERT INTO `placa` (`ID`, `modelo`, `marca`, `socket`, `forma`, `ddr`, `chipset`, `slots_ram`, `wifi`, `bluetooth`, `slots_nvme`, `link`, `imagen`) VALUES ('5', 'N7 Z790', 'NZXT', 'LGA 1700', 'ATX', 'DDR5', 'Z790', '4', '1', '1', '1', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Tarjetas-Madre/Tarjeta-Madre-NZXT-ATX-N7-Z790-S-1700-Intel-Z790-HDMI-128GB-DDR5-para-Intel.html#emdetails_attributes', 'N7 Z790.jpg');

INSERT INTO `procesador` (`ID`, `modelo`, `marca`, `nucleos`, `socket`, `igpu`, `disipador`, `consumo`, `link`, `imagen`) VALUES ('4', 'Core i5-13400', 'Intel', '(6), (12)', 'LGA 1700', '1', '0', '65 W', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Procesadores/Procesadores-para-PC/Procesador-Intel-Core-i5-13400-Intel-UHD-Graphics-730-S-1700-2-50GHz-10-Core-20MB-Smart-Cache-13va-Generacion-Raptor-Lake.html#emdetails_attributes', 'Core i5-13400.jpg');
INSERT INTO `procesador` (`ID`, `modelo`, `marca`, `nucleos`, `socket`, `igpu`, `disipador`, `consumo`, `link`, `imagen`) VALUES ('5', 'Core i7-13700', 'Intel', '(8), (16)', 'LGA 1700', '1', '0', '65 W', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Procesadores/Procesadores-para-PC/Procesador-Intel-Core-i7-13700-Intel-Graphics-UHD-770-S-1700-2-10GHz-16-Core-30MB-Smart-Cache-13va-Generacion-Raptor-Lake.html', 'Core i7-13700.jpg');

INSERT INTO `ram` (`ID`, `modelo`, `marca`, `tipo_ddr`, `frecuencia`, `consumo`, `link`, `imagen`) VALUES ('4', 'CT8G48C40U5', 'Crucial', 'DDR5', '4800 MHz', '1.1 V ', 'https://www.cyberpuerta.mx/Computo-Hardware/Memorias-RAM-y-Flash/Memorias-RAM-para-PC/Memoria-RAM-Crucial-CT8G48C40U5-DDR5-4800MHz-8GB-ECC-CL40.html#emdetails_attributes', 'CT8G48C40U5.jpg');
INSERT INTO `ram` (`ID`, `modelo`, `marca`, `tipo_ddr`, `frecuencia`, `consumo`, `link`, `imagen`) VALUES ('5', 'AD5U48008G-S ', 'Adata', 'DDR5', '4800 MHz', '1.1 V', 'https://www.cyberpuerta.mx/Computo-Hardware/Memorias-RAM-y-Flash/Memorias-RAM-para-PC/Memoria-RAM-Adata-AD5U48008G-S-DDR5-4800MHz-8GB-ECC-CL40.html#emdetails_attributes', 'AD5U48008G-S.jpg');

INSERT INTO `ventilador` (`ID`, `modelo`, `marca`, `medida`, `link`, `imagen`) VALUES ('4', 'F120Q', 'NZXT', '120mm', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Enfriamiento-y-Ventilacion/Ventiladores/Ventilador-NZXT-F120Q-120mm-500-1200RPM-Blanco.html', 'F120Q.jpg');
INSERT INTO `ventilador` (`ID`, `modelo`, `marca`, `medida`, `link`, `imagen`) VALUES ('5', 'LL120 RGB', 'Corsair', '120mm', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Enfriamiento-y-Ventilacion/Ventiladores/Ventilador-Corsair-LL120-RGB-120mm-600-1500RPM.html', 'LL120 RGB.jpg');

INSERT INTO `fuentes` (`ID`, `modelo`, `marca`, `potencia`, `certificacion`, `link`, `imagen`) VALUES ('4', 'C650', 'NZXT', '650W', '80 PLUS Bronze', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Fuentes-de-Poder-para-PC-s/Fuente-de-Poder-NZXT-C650-Bronze-80-PLUS-Bronze-Semi-Modular-20-4-pin-ATX-120mm-650W.html', 'C650.jpg');
INSERT INTO `fuentes` (`ID`, `modelo`, `marca`, `potencia`, `certificacion`, `link`, `imagen`) VALUES ('5', 'Toughpower GX1', 'Thermaltake', '700W', '80 PLUS Gold', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Fuentes-de-Poder-para-PC-s/Fuente-de-Poder-Thermaltake-Toughpower-GX1-80-PLUS-Gold-24-pin-ATX-120mm-700W.html', 'Toughpower GX1.jpg');

INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('1', '4');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('1', '5');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('2', '4');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('2', '5');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('3', '4');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('3', '5');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('4', '1');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('4', '2');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('4', '3');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('4', '4');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('4', '5');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('5', '1');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('5', '2');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('5', '3');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('5', '4');
INSERT INTO `compatibilidad_gabinete_grafica` (`ID_Principal`, `ID_grafica`) VALUES ('5', '5');

INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('1', '4');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('1', '5');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('2', '4');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('2', '5');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('3', '4');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('3', '5');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('4', '1');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('4', '2');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('4', '3');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('4', '4');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('4', '5');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('5', '1');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('5', '2');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('5', '3');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('5', '4');
INSERT INTO `compatibilidad_gabinete_ventilador` (`ID_Principal`, `ID_ventilador`) VALUES ('5', '5');

INSERT INTO `compatibilidad_placa_disipador` (`ID_Principal`, `ID_disipador`) VALUES ('4', '4');
INSERT INTO `compatibilidad_placa_disipador` (`ID_Principal`, `ID_disipador`) VALUES ('4', '5');
INSERT INTO `compatibilidad_placa_disipador` (`ID_Principal`, `ID_disipador`) VALUES ('5', '4');
INSERT INTO `compatibilidad_placa_disipador` (`ID_Principal`, `ID_disipador`) VALUES ('5', '5');

INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('1', '4');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('1', '5');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('2', '4');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('2', '5');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('3', '4');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('3', '5');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('4', '1');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('4', '2');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('4', '3');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('4', '4');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('4', '5');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('5', '1');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('5', '2');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('5', '3');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('5', '4');
INSERT INTO `compatibilidad_placa_gabinete` (`ID_Principal`, `ID_gabinete`) VALUES ('5', '5');

INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('1', '4');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('1', '5');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('2', '4');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('2', '5');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('3', '4');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('3', '5');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('4', '1');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('4', '2');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('4', '3');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('4', '4');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('4', '5');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('5', '1');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('5', '2');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('5', '3');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('5', '4');
INSERT INTO `compatibilidad_placa_ssdm2` (`ID_Principal`, `ID_ssdm2`) VALUES ('5', '5');

INSERT INTO `compatibilidad_procesador_placa` (`ID_Principal`, `ID_placa`) VALUES ('4', '4');
INSERT INTO `compatibilidad_procesador_placa` (`ID_Principal`, `ID_placa`) VALUES ('4', '5');
INSERT INTO `compatibilidad_procesador_placa` (`ID_Principal`, `ID_placa`) VALUES ('5', '4');
INSERT INTO `compatibilidad_procesador_placa` (`ID_Principal`, `ID_placa`) VALUES ('5', '5');

INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('1', '4');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('1', '5');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('2', '4');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('2', '5');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('3', '4');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('3', '5');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('4', '1');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('4', '2');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('4', '3');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('4', '4');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('4', '5');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('5', '1');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('5', '2');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('5', '3');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('5', '4');
INSERT INTO `compatibilidad_procesador_ram` (`ID_Principal`, `ID_ram`) VALUES ('5', '5');