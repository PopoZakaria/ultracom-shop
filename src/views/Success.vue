<template>
  <div class="success">
    <div class="d-flex success-checkout align-items-center justify-content-center">

        <div class="col col-lg-4 text-center">
          <img src="img/success-buy.png" alt width="294" />
          <h3 class="mt-4">Sukses Terbayar!</h3>
          <p
            class="mt-2"
          >Silakan tunggu update terbaru dari kami via Whatsapp dan Email yang sudah anda kirim sebelumnya dan kirim bukti pembayaran yang sudah dibayar dikirim melalui Whatsapp di bawah ini</p>
          <div class="mt-1">
              <a href="https://wa.me/6281283392445" class="primary-btn pd-cart mt-3">Kirim Bukti Transfer</a>
          </div>  
          <div class="mt-1">
              <a href="HomeView.vue" class="primary-btn pd-cart mt-3">Back to Home</a>
            </div>
          </div>
        </div>
  </div>
</template>

<script>
export default {
    // eslint-disable-next-line vue/multi-word-component-names
    name: "Success"
}
</script>