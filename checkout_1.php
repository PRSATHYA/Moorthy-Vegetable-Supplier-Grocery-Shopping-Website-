<?php

require __DIR__ . "/vendor/autoload.php";

$stripe_secret_key = "sk_test_51NRI4vSJoqbDce3L3foMji93tku4WbQKlZtg434m1FxdctACew8KuW3MNnRWrtXvOSAl0TXKK5V0ToK0eJqRTqKB00RIsLQdQ7";

\Stripe\Stripe::setApiKey($stripe_secret_key);

$checkout_session = \Stripe\Checkout\Session::create([
    "mode" => "payment",
    "success_url" => "http://localhost/vijayan_shop/success.php",
    "cancel_url" => "http://localhost/vijayan_shop/checkout.php",
    "locale" => "auto",
    "line_items" => [
        [
            "quantity" => 1,
            "price_data" => [
                "currency" => "inr",
                "unit_amount" => 3000,
                "product_data" => [
                    "name" => "Tomato (1 Kg)"
                ]
            ]
        ],
        [
            "quantity" => 1,
            "price_data" => [
                "currency" => "inr",
                "unit_amount" => 4000,
                "product_data" => [
                    "name" => "Carrot (1 Kg)"
                ]
            ]
        ]        
    ]
]);

http_response_code(303);
header("Location: " . $checkout_session->url);