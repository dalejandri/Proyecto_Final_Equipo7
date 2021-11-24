SELECT uci."ID_REGISTRO" id_registro, uci."UCI" uci, et."NEUMONIA" neumonia, et."DIABETES" diabetes, et."EPOC", epoc, et."CARDIOVASCULAR" cardiovascular, et."INMUSUPUR" inmusupur, et."HIPERTENSION" hipertension, et."RENAL_CRONICA" renal_cronica, et."TABAQUISMO" tabaquismo
INTO clean_table
FROM uci_table uci
LEFT JOIN enfermedades_table et ON et."ID_REGISTRO" = uci-"ID_REGISTRO"
WHERE 1=1
AND uci."UCI" < 3
AND et."NEUMONIA" < 3
AND et."DIABETES" < 3
AND et."EPOC" < 3
AND et."CARDIOVASCULAR" < 3
AND et."INMUSUPUR" < 3
AND et."HIPERTENSION" < 3
AND et."TABAQUISMO" < 3
AND et."RENAL_CRONICA" < 3
