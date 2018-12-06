Category.create(name: 'Mental Heath')
Category.create(name: 'Relationships')
Category.create(name: 'Therapy')
Category.create(name: 'Productivity')
Category.create(name: 'Mindfulness')
Category.create(name: 'Exercise')
Category.create(name: 'Nutrition & Medicine')
Category.create(name: 'Sleep')


User.create(name: "Leanne", email: "leannecabey@mail.com", password: "1234567")

Intention.create(user_id: 1, name: 'Eat Clean', complete: 0)
Intention.create(user_id: 1, name: 'Stay Active', complete: 0)
Intention.create(user_id: 1, name: 'Be Present', complete: 0)
Post.create(title: 'Baked Goods for Eating Clean', address: '', comment: 'Bob’s Red Mill makes amazing baked good mixes with all natural ingredients.', url: 'https://www.bobsredmill.com', owner_id: 1)

Post.create(title: 'Down Dog App for Yoga', address: '', comment: 'This is a great app for customizing your yoga regimen. The girl’s voice is a little bit creepy though. Takes some getting used to.', url: 'https://www.downdogapp.com/', owner_id: 1)

Post.create(title: 'Daily Meditation on Headspace', address: '', comment: 'I really enjoy Headspace for short, daily meditation. You go through really useful exercises.', url: 'https://www.headspace.com/', owner_id: 1)

Post.create(title: 'Keep a Gratitude Journal', address: '', comment: 'Write down 1-3 you’re grateful for each day. Your overall happiness will improve!', url: 'https://www.headspace.com/', owner_id: 1)


PostCategory.create(post_id: 1, category_id: 7)
PostCategory.create(post_id: 2, category_id: 6)
PostCategory.create(post_id: 3, category_id: 5)
PostCategory.create(post_id: 3, category_id: 1)
PostCategory.create(post_id: 4, category_id: 5)
PostCategory.create(post_id: 4, category_id: 1)


UserPost.create(user_id: 1, post_id: 1, intention_id: 1)
UserPost.create(user_id: 1, post_id: 2, intention_id: 2)
UserPost.create(user_id: 1, post_id: 3, intention_id: 3)
UserPost.create(user_id: 1, post_id: 4, intention_id: 3)
