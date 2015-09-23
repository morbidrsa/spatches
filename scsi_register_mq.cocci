@@
identifier shost, sht;
expression tsize;
@@

- shost = scsi_register(sht, tsize);
+ shost = scsi_register(sht, tsize, true);
