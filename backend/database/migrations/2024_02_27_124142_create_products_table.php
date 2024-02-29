<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id('productId');
            $table->string('productName');
            $table->integer('productPrice');
            $table->string('productDescription');
            $table->integer('productColorId1');
            $table->integer('productColorId2');
            $table->integer('productColorId3');
            $table->string('picture1');
            $table->string('picture2');
            $table->string('picture3');
            $table->integer('productQuantity');
            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
};
