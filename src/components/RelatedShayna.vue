<template>
  <!-- Related Products Section End -->
  <div class="related-products spad">
    <div class="container">
      <div class="row">
       <div class="col-lg-12 mt-5" v-if="products.length > 0">
         <h3 class="mb-2" style="font-family: Arial, Helvetica, sans-serif; color: #007bff; font-weight: bold;">Produk Kami</h3>
                    <carousel class="product-slider" :items="3" :dots="false" :autoplay="true" :nav="false">
                        <div class="product-item" v-for="itemProduct in products" v-bind:key="itemProduct.id">
                            <div class="pi-pic">
                                <img v-bind:src="itemProduct.galleries[0].photo" alt  />
                                <ul>
                                    <li @click="saveKeranjang(itemProduct.id, itemProduct.name, itemProduct.price, itemProduct.galleries[0].photo)" class="w-icon active">
                                        <a href="#"><i class="icon_bag_alt"></i></a>
                                    </li>
                                    <li @click="quickView()" class="quick-view">
                                        <router-link v-bind:to="'/product/'+itemProduct.id">+ Quick View</router-link>
                                    </li>
                                </ul>
                            </div>
                            <div class="pi-text">
                                <div class="catagory-name">{{ itemProduct.type }}</div>
                                <router-link to="/product">
                                <a href="#">
                                    <h5>{{ itemProduct.name }}</h5>
                                </a>
                                </router-link>
                                <div class="product-price">
                                    Rp.{{ itemProduct.price }}
                                </div>
                            </div>
                        </div>
                    </carousel>
                </div>
                    <div class="col-lg-12" v-else>
                        <p>
                            Produk Terkait Tidak Tersedia
                        </p>
                    </div>
      </div>
    </div>
  </div>
  <!-- Related Products Section End -->
</template>

<script>
import carousel from "vue-owl-carousel";
import axios from "axios";

export default {
    name: "RelatedShayna",
    components: {
        carousel
    },
    data() {
        return {
            products: [],
            keranjangUser: []
        };
    },
    mounted() {
        axios
            .get("http://127.0.0.1:8000/api/products") 
            .then((response) => {
                this.products = response.data.data.data;
            })
            .catch((error) => {
                console.log(error);
            });

        if (localStorage.getItem("keranjangUser")) {
            try {
                this.keranjangUser = JSON.parse(localStorage.getItem("keranjangUser"));
            } catch (e) {
                localStorage.removeItem("keranjangUser");
            }
        }
    },
    methods: {
    saveKeranjang(idProduct, nameProduct, priceProduct, photoProduct) {
      var productStored = {
        id: idProduct,
        name: nameProduct,
        price: priceProduct,
        photo: photoProduct
      };

      this.keranjangUser.push(productStored);
      const parsed = JSON.stringify(this.keranjangUser);
      localStorage.setItem("keranjangUser", parsed);
    
      window.location.reload();
    },
    quickView() {
      window.location.reload();
    }
  }
};
</script>

<style scoped>
.product-item {
    margin-right: 20px;
}
.pi-pic img {
  height: 450px;
}

</style>