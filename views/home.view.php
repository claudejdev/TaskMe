<!-- Div used to center elements -->
<div class="container text-center m-5">
    <h1 class="display-1 text-dark">Hello World !
        <small class="text-muted">Carpe diem !</small></h1>
    <div id="playground" class="m-5"></div> <!-- Div in which the grid will be displayed -->
</div>
<?php foreach ($datas as $lines) { ?>
    <br />
    ---------------
    <br />
    Who : <?php echo $lines['user']; ?>
    <br />
    Have to : <?php echo $lines['what']; ?>
    <br />
    Status : <?php echo $lines['status']; ?>
    <br />
    ---------------
    <br />
<?php } ?>