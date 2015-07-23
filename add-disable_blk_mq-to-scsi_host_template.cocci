@scsi_host_template@
identifier host;
@@

struct scsi_host_template host = {
       ...,
+	.disable_blk_mq = 1,
};
