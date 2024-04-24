
[1mFrom:[0m /home/asdasd/Downloads/odin-ruby-prac/social-media/spec/models/user_spec.rb:12 :

     [1;34m7[0m:     it { is_expected.to validate_uniqueness_of([33m:username[0m).case_insensitive }
     [1;34m8[0m:     it { is_expected.to validate_uniqueness_of([33m:email[0m).case_insensitive }
     [1;34m9[0m:   [32mend[0m
    [1;34m10[0m: 
    [1;34m11[0m:   describe [31m[1;31m"[0m[31mvalidation of email formats[1;31m"[0m[31m[0m [32mdo[0m
 => [1;34m12[0m:     it { binding.pry }
    [1;34m13[0m:     test_user = [1;34;4mFactoryBot[0m.create([33m:user[0m)
    [1;34m14[0m:     it { is_expected.to allow_value(test_user.email).for([33m:email[0m) }
    [1;34m15[0m:     it { is_expected.to allow_value([31m[1;31m'[0m[31muser@example.com[1;31m'[0m[31m[0m).for([33m:email[0m) }
    [1;34m16[0m:     it { is_expected.to allow_value([31m[1;31m'[0m[31muser.name@example.co.uk[1;31m'[0m[31m[0m).for([33m:email[0m) }
    [1;34m17[0m:     it { is_expected.to_not allow_value([31m[1;31m'[0m[31m@example.com[1;31m'[0m[31m[0m).for([33m:email[0m) }

