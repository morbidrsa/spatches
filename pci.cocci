// IORESOURCE_MEM
@@
expression err, pdev, name;
@@

- err = pci_request_selected_regions(pdev, pci_select_bars(pdev, IORESOURCE_MEM), name);
+ err = pci_request_mem_regions(pdev, name);

@@
expression pdev;
@@
- pci_release_selected_regions(pdev, pci_select_bars(pdev, IORESOURCE_MEM));
+ pci_release_mem_regions(pdev);

@@
expression err, pdev, name;
identifier bars;
@@
- bars = pci_select_bars(pdev, IORESOURCE_MEM);
...
- err = pci_request_selected_regions(pdev, bars, name);
+ err = pci_request_mem_regions(pdev, name);

@@
expression pdev;
identifier bars;
@@
- bars = pci_select_bars(pdev, IORESOURCE_MEM);
...
- pci_release_selected_regions(pdev, bars);
+ pci_release_mem_regions(pdev);

// IORESOURCE_IO
@@
expression err, pdev, name;
@@

- err = pci_request_selected_regions(pdev, pci_select_bars(pdev, IORESOURCE_IO), name);
+ err = pci_request_io_regions(pdev, name);

@@
expression pdev;
@@
- pci_release_selected_regions(pdev, pci_select_bars(pdev, IORESOURCE_IO));
+ pci_release_io_regions(pdev);

@@
expression err, pdev, name;
identifier bars;
@@
- bars = pci_select_bars(pdev, IORESOURCE_IO);
...
- err = pci_request_selected_regions(pdev, bars, name);
+ err = pci_request_io_regions(pdev, name);

@@
expression pdev;
identifier bars;
@@
- bars = pci_select_bars(pdev, IORESOURCE_IO);
...
- pci_release_selected_regions(pdev, bars);
+ pci_release_io_regions(pdev);
