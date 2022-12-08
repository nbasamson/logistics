        <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="index.php?page=home"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                   
                    <li class=''>
                        <a href="index.php?page=employee&io=1"><i class='bx bx-briefcase'></i> Contractor List</a>
                    </li>
                    <li>
                        <a href="index.php?page=project_list&io=1"><i class='bx bx-list-ul' ></i> Project List</a>
                    </li>
                <?php if($_SESSION['TYPE'] == 1): ?>
                    <li class=''>
                    <a href="index.php?page=user_list&io=1"><i class='bx bx-user-plus'></i> Users</a>
                    </li>
                <?php endif; ?>    
                    <li>
                        <a id="dem3" href="javascript:;" data-toggle="collapse" data-target="#demo3"><i class="fa fa-fw fa-gears"></i> Management Plan       <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo3" class="collapse">
                        
                             <li>
                                <a href="index.php?page=position"><i class="fa fa-hand-o-up" aria-hidden="true"></i> Position</a>
                            </li>
                             <li>
                                <a href="index.php?page=division"><i class='bx bxl-product-hunt'></i> Project Divisions</a>
                            </li>
                            <li style="">
                                <a href="index.php?page=project_team"><i class="fa fa-fw fa-users"></i> Project Team</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a id="dem4" href="javascript:;" data-toggle="collapse" data-target="#demo4"><i class='bx bxs-building-house'></i> Asset Management  <i class="fa fa-fw fa-caret-down"></i></a>

                        <ul id="demo4" class="collapse">
                             <li>
                                <a href="index.php?page=zdashboard"><i class='bx bx-list-check'></i> Assets Dashboard</a>
                            </li>
                             <li>
                                <a href="index.php?page=zitems"><i class='bx bx-list-check'></i> Items</a>
                            </li>
                            <li>
                                <a href="index.php?page=zfacility"><i class='bx bxs-folder-open' ></i> Facility</a>
                            </li>
                            <li>
                                <a href="index.php?page=zdisposal"><i class='bx bxs-folder-open' ></i> Disposed Asset</a>
                            </li>
                            <li>
                                <a href="index.php?page=zaccountability"><i class='bx bxs-folder-open' ></i> Accountability</a>
                            </li>
                            <li>
                                <a href="index.php?page=zreports"><i class='bx bxs-folder-open' ></i> Reports</a>
                            </li>
                            
                        </ul>
                    </li>

                    <li>
                        <a id="dem2" href="javascript:;" data-toggle="collapse" data-target="#demo2"><i class='bx bxs-building-house'></i> Warehouse  <i class="fa fa-fw fa-caret-down"></i></a>

                        <ul id="demo2" class="collapse">
                             <li>
                                <a href="index.php?page=product"><i class='bx bxl-product-hunt'></i> Products</a>
                                
                            </li>
                            <li>
                                <a href="index.php?page=inventory"><i class='bx bx-memory-card'></i> Inventory</a>
                            </li>
                            <li>
                                <a href="index.php?page=transaction"><i class='bx bx-loader-circle'></i> Transaction</a>
                            </li>
                            <li>
                                <a href="index.php?page=supplier"><i class='bx bxs-truck' ></i> Supplier</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a id="dem5" href="javascript:;" data-toggle="collapse" data-target="#demo5"><i class='bx bxs-hard-hat'></i> M.R.O  <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo5" class="collapse">
                             <li>
                                <a href="index.php?page=mro_dashboard"><i class='bx bxl-product-hunt'></i> Dashboard</a>
                            </li>
                            <li>
                                <a href="index.php?page=mro_add"><i class='bx bxl-product-hunt'></i> Add Task</a>
                            </li>
                            <li>
                                <a href="index.php?page=mro_list"><i class='bx bxl-product-hunt'></i> List of Taskk</a>
                            </li>
                            <li>
                                <a href="index.php?page=mro_worko"><i class='bx bxs-radiation'></i> Work Orders</a>
                            </li>
                            <li>
                                <a href="index.php?page=mro_reports"><i class='bx bxs-bookmark-alt' ></i> Reports</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a id="dem6" href="javascript:;" data-toggle="collapse" data-target="#demo6"><i class='bx bxs-building-house'></i> Procurement  <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo6" class="collapse">
                            <li>
                                <a href="index.php?page=xdashboard"><i class='bx bxl-product-hunt'></i> Dashboard</a>
                            </li>
                             <li>
                                <a href="index.php?page=xemployees"><i class='bx bxl-product-hunt'></i> User Employee Section</a>
                            </li>
                            <li>
                                <a href="index.php?page=xdepartment"><i class='bx bx-memory-card'></i>Department </a>
                            </li>
                            <li>
                                <a href="index.php?page=xleave-section"><i class='bx bx-loader-circle'></i> Type of Request</a>
                            </li>
                            <li>
                                <a href="index.php?page=xsupply-request"><i class='bx bxs-folder-open' ></i> Request Supply</a>
                            </li>
                        
                            <li>
                                <a href="index.php?page=xmanage-admin"><i class='bx bxs-truck' ></i> Manage Admin</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a id="dem11" href="javascript:;" data-toggle="collapse" data-target="#demo11"><i class='bx bxs-hard-hat'></i> Procurement Requests  <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo11" class="collapse">
                             <li>
                                <a href="index.php?page=xpending-history"><i class='bx bxl-product-hunt'></i> Pending</a>
                            </li>
                            <li>
                                <a href="index.php?page=xapproved-history"><i class='bx bxl-product-hunt'></i> Approved </a>
                            </li>
                            <li>
                                <a href="index.php?page=xdeclined-history"><i class='bx bxl-product-hunt'></i> Declined</a>
                            </li>
                            <li>
                                <a href="index.php?page=xreq-history"><i class='bx bxl-product-hunt'></i> Request History</a>
                    </li>
            
    </ul>
<script>
    var _h = location.href  
        $('.side-nav a').each(function(){
            if(_h.includes($(this).attr("href")) == true){
                $(this).closest('li').addClass('active')
            }
        })
</script>