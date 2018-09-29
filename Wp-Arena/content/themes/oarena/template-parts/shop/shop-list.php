<?php 

$shopping_cart = site_url('panier'); 

?>

<div class="news p-3 d-flex justify-content-around">
    <h2 class="news__title text-light h1">Reservez dés maintenant votre place pour les prochains tournois</h2>
   <a href="<?= $shopping_cart; ?>" style="color: black;"><i class="fa fa-shopping-basket" style="font-size: 2em;" aria-hidden="true"></i></a>
</div>
    <div class="news__content">

    <?php 

$args= [
    'post_type' => 'article',
    'cat' => '',
    'posts_per_page' => -1,
    'order' => 'ASC',
    'order_by' => 'date'
];

$our_articles = new WP_Query($args);

if ($our_articles->have_posts()): while ($our_articles->have_posts()): $our_articles->the_post(); 

      
    
    get_template_part('template-parts/shop/shop' , 'single');
 
endwhile;
?>

<div class="totals h1">
<div class="totals-item d-none">
<label>Total des articles</label>
<div class="totals-value" id="cart-subtotal">0</div>
</div>
<div class="totals-item d-none">
<label>Tax (0%)</label>
<div class="totals-value" id="cart-tax">0</div>
</div>
<div class="totals-item d-none">
<label>Frais de port</label>
<div class="totals-value" id="cart-shipping">0</div>
</div>
<div class="totals-item totals-item-total">
<label>Total</label>
<div class="totals-value" id="cart-total">0</div>
</div>
</div>

<?php 
                   if (is_user_logged_in()) 
                    {
                        $user = wp_get_current_user()->roles;

                            // var_dump($user);
                            foreach ($user as $role) {
                                // var_dump($role);
                                // die;
                            }

                            if ($role === 'administrator' || $role === 'TeamAdmin') { ; ?>


<button class="checkout btn btn-success" name="add-to-cart-button" style="height: 5em;" >Ajouter les articles au panier</button>



<?php 
// Je remet les variables globals telle qu'elles étaient avant ma boucle custom
// wp_reset_postdata();    
                    

                        }
                    }

endif; ?>

    </div>
</div>