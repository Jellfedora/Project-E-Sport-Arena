    <div class="card mb-2 p-3" style="width: 15rem;">
        <div class="card__intro d-flex justify-content-around ">
        <img class="card-img-top p-1" src="https://source.unsplash.com/100x100/?fortnite">
        <ul class="mt-2 ml-2">
            <i class="fa fa-gamepad" aria-hidden="true"><span class="intro__font ml-1"> <?= get_game(get_the_ID()); ?></span></i>
            <i class="fa fa-user " aria-hidden="true"><span class="intro__font ml-1"> <?= get_seats(get_the_ID()); ?></span></i>
            <i class="fa fa-eur " aria-hidden="true"><span class="intro__font ml-1"> <?= get_price(get_the_ID()); ?></span></i>
            <i class="fa fa-calendar " aria-hidden="true"><span class="intro__font ml-1"> <?= get_date(get_the_ID()); ?></span></i>
        </ul>
        </div>
        <div class="card-body d-flex flex-column">
        <h3 class="news__tournament"><?php the_title() ; ?></h3>
        <p class="card-text"> <?php the_content() ; ?></p>
           <a href="<?= get_the_permalink(get_the_ID()) ; ?>" class="text-center"><button type="button" class="btn btn-info" >Infos</button></a>
        </div>
    </div>