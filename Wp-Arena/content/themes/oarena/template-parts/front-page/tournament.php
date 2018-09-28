    <div class="card mb-2 p-3 text-light " style="width: 30rem; border: 3px solid black; background-color:#242752;">
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
            <div class="container">
                <a href="<?= get_the_permalink(get_the_ID()) ; ?>"> <button class='myButt one' type="submit" value="Creer team">
                    <div class='insider'></div>
                    En savoir plus
                </button>
                </a>
            </div>
        </div>
    </div>