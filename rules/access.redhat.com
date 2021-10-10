"re.match","re.sub","re.sub_replace","block/supported/url_only/equivalent_to/unknown","continue/stop","notes","rulename"
"^https://access.redhat.com/errata/RHSA-[0-9]*:[0-9]*$","","","supported","stop","RHSA","RHSA"
"^https://access.redhat.com/errata/#/","","","url_only","stop","RHSA listings","RHSA listings"
