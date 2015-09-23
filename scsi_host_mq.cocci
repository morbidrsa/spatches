@@
identifier shost, sht;
expression tsize;
@@

- shost = scsi_host_alloc(sht, tsize);
+ shost = scsi_host_alloc(sht, tsize, true);
