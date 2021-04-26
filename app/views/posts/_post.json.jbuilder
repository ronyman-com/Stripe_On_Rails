

#Stripe Payment On Rails
# Author by Rony MAN
# visit website : wwww.ronyman.com/stripe

json.extract! post, :id, :title, :body, :created_at, :updated_at
json.url post_url(post, format: :json)
