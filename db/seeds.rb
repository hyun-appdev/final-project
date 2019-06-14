User.create!([
  {email: "test@email.com", encrypted_password: "$2a$11$4I9s6dp.E39w9lYTewFdKeGqVcXIYPn3pRFSj1VTTSYGgTTlUYu/e", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, reviews: nil}
])
AdminUser.create!([
  {email: "admin@example.com", encrypted_password: "$2a$11$oaX0I6EOTbuTfyvcLo5E.uQIKhE8BA6Om8Lx/362cYjzCJw9ep5au", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil}
])
Vote.create!([
  {user_id: 1, review_id: 1, upvote: 1, downvote: 0},
  {user_id: 1, review_id: 1, upvote: 1, downvote: 0},
  {user_id: 1, review_id: 1, upvote: 1, downvote: 0},
  {user_id: 1, review_id: 1, upvote: 1, downvote: 0},
  {user_id: 1, review_id: 1, upvote: 1, downvote: 0},
  {user_id: 1, review_id: 1, upvote: 1, downvote: 0},
  {user_id: 1, review_id: 10, upvote: 1, downvote: 0},
  {user_id: 1, review_id: 14, upvote: 0, downvote: 1},
  {user_id: 1, review_id: 14, upvote: 1, downvote: 0},
  {user_id: 1, review_id: 14, upvote: 1, downvote: 0},
  {user_id: 1, review_id: 14, upvote: 0, downvote: 1},
  {user_id: 1, review_id: 14, upvote: 0, downvote: 1},
  {user_id: 1, review_id: 14, upvote: 0, downvote: 1},
  {user_id: 1, review_id: 14, upvote: 1, downvote: 0},
  {user_id: 1, review_id: 14, upvote: 0, downvote: 1},
  {user_id: 1, review_id: 15, upvote: 1, downvote: 0},
  {user_id: 1, review_id: 15, upvote: 1, downvote: 0},
  {user_id: 1, review_id: 15, upvote: 0, downvote: 1},
  {user_id: 1, review_id: 16, upvote: 1, downvote: 0},
  {user_id: 1, review_id: 16, upvote: 0, downvote: 1},
  {user_id: 1, review_id: 12, upvote: 1, downvote: 0},
  {user_id: 1, review_id: 12, upvote: 0, downvote: 1}
])
Product.create!([
  {category: "Home & Kitchen", company_id: 0, serial_no: "0000", product_name: "V7 Motorhead Cordless Stick Vacuum Cleaner", model_number: "227591-01", modelname: "Fuchsia"},
  {category: "Electronics", company_id: 0, serial_no: "0000", product_name: "Echo Dot", model_number: "2018", modelname: "3rd Gen Sandstone"},
  {category: "Home & Kitchen", company_id: 0, serial_no: "B00IWOJSAY", product_name: "FlexBrew Single Serve & Full Pot Coffee Maker", model_number: "49983A", modelname: "FlexBrew"},
  {category: "Electronics", company_id: 0, serial_no: "", product_name: "Bluetooth Speaker", model_number: "B077MV9YJH", modelname: "Kube"},
  {category: "Beauty & Personal Care", company_id: 0, serial_no: "", product_name: "Moisturizing Cream", model_number: "SG_B00TTD9BRC_IN", modelname: "19 Ounce"}
])
Review.create!([
  {compensation_id: 0, review_content: "This is a very good vacuum cleaner. Excellent quality. By spite about do of do allow blush. Additions in conveying or collected objection in. Suffer few desire wonder her object hardly nearer. Abroad no chatty others my silent an. Fat way appear denote who wholly narrow gay settle. Companions fat.", product_id: 1, ratings: 4, reviewer_id: nil},
  {compensation_id: 0, review_content: "Echo dot is very bad. I don't like it. This is horrible. Amazon is bad.", product_id: 2, ratings: 1, reviewer_id: nil},
  {compensation_id: 0, review_content: "I love my Echo Dot. I always ask it what today's wether is and it's amazing!", product_id: 2, ratings: 4, reviewer_id: nil},
  {compensation_id: 0, review_content: "I love coffee and I always use this FlexBrew to brew my flex coffee. As rapid woody my he me which. Men but they fail shew just wish next put. Led all visitor musical calling nor her.", product_id: 3, ratings: 4, reviewer_id: nil},
  {compensation_id: 0, review_content: "I became beautiful with this cream. Bringing unlocked me an striking ye perceive. Mr by wound hours oh happy. Me in resolution pianoforte continuing we. Most my no spot felt by no.", product_id: 5, ratings: 4, reviewer_id: nil},
  {compensation_id: 0, review_content: "Great music with Kube bluetooth speaker. Beautiful design", product_id: 4, ratings: 5, reviewer_id: nil},
  {compensation_id: 0, review_content: "I love the product. Test test this is a test review.", product_id: 4, ratings: 4, reviewer_id: nil},
  {compensation_id: 0, review_content: "This vacuum cleaner is very weak so that it cannot suck up the dust", product_id: 1, ratings: 1, reviewer_id: 1},
  {compensation_id: 0, review_content: "I loved my smart spearker. test testest ", product_id: 2, ratings: 4, reviewer_id: 1}
])
