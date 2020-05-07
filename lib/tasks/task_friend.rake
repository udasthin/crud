namespace :task_friend do
  desc "ポイントを表示するタスク"
  task say_point: :environment do
    puts "ポイントゲット！！"
  end

  desc "ゴールを表示するタスク"
  task say_goal: :environment do
    puts "ゴール！！"
  end
end

namespace :friend_when_dating do

  desc "ゴールを褒める"
  task goal_praise: :environment do
    puts "You are goal!!"
  end

  desc "ポイントをゲット"
  task get_point: :environment do
    puts "Point get"
  end
end