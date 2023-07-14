This is a super secret internal page!
Hit this page with query parameter of "getflag" to get the flag.
<?php
    if (isset($_REQUEST['getflag'])) {
        echo "flag{internal_pivot_successful}";
    }
?>