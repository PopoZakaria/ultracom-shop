<template>
        <!-- Hero Section Begin -->
    <section class="hero-section">
        <carousel class="hero-items" :autoplay="true" :items="1" :nav="false">

            <div class="single-hero-items set-bg" style="background-image: url('/img/hero-1.jpg')">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-7" style="margin-left: 500px;">
                            <h1>Yuk Belanja di Ultracom Shop</h1>
                            <p>
                                Dapatkan berbagai macam produk kebutuhan bank dan alat tulis kantor yang hanya ada di Ultracom Shop dan dapatkan penawaran menarik lainnya
                            </p>
                            <a href="#" class="primary-btn">Belanja Sekarang</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-hero-items set-bg" style="background-image: url('/img/hero-2.jpg')">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5">
                            <span>Passbook, Mesin Hitung Uang</span>
                            <h1>Ultracom SALE!</h1>
                            <p>
                                Menjual berbagai macam produk kebutuhan bank dan alat tulis kantor yang berkualitas dengan harga terjangkau dan bergaransi resmi dari pabrik 
                            </p>
                            <a href="#" class="primary-btn">Belanja Sekarang</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-hero-items set-bg align-center" style="background-image: url('/img/hero-3.jpg')">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6" >
                            <span>Mobile App</span>
                            <h1>Home Service Ultracom</h1>
                            <p style="font-weight: bold;">
                               Dapatkan pelayanan terbaik dari kami dengan mengunduh aplikasi kami untuk mendapatkan layanan home service yang cepat dan mudah di mana saja dan kapan saja
                            </p>
                            <a href="#" class="primary-btn">Download</a>
                        </div>
                    </div>
                </div>
            </div>

        </carousel>
    </section>
    <!-- Hero Section End --> 
</template>

<script>
import carousel from 'vue-owl-carousel'

export default {
    name: 'HeroShayna',
    components: {
        carousel
    }
}
</script>