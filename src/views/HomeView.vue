<template>
  <div class="home">
    <HeaderShayna/>
    <HeroShayna/>
    <WomanShayna/>
    <InstaShaynaVue/>
    <PartnerShayna/>
    <FooterShayna/>
  </div>
</template>

<script>
// @ is an alias to /src
import HeaderShayna from '@/components/HeaderShayna.vue'
import HeroShayna from '@/components/HeroShayna.vue'
import WomanShayna from '@/components/WomanShayna.vue';
import InstaShaynaVue from '@/components/InstaShayna.vue';
import PartnerShayna from '@/components/PartnerShayna.vue';
import FooterShayna from '@/components/FooterShayna.vue';

export default {
  name: 'HomeView',
  components: {
    HeaderShayna,
    HeroShayna,
    WomanShayna,
    InstaShaynaVue,
    PartnerShayna,
    FooterShayna
  }
}
</script>
