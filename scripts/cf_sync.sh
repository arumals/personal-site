cf_publish_arumalscom(){

    npx wrangler pages publish public --project-name arumalscom

    curl -X POST "https://api.cloudflare.com/client/v4/zones/${CLOUDFLARE_ARUMALSCOM_ZONE_ID}/purge_cache" \
     -H "Authorization: Bearer ${CLOUDFLARE_PURGE_TOKEN_ID}" \
     -H "Content-Type: application/json" \
     --data '{"purge_everything":true}'

}
