def get_evaluation
    puts "1から5で評価を入力してください"
    while true
        point = gets.to_i

        if point >= 1 && point <= 5
            puts "コメントを入力してください"
            comment = gets
            post = "ポイント：#{point} コメント：#{comment}"
            File.open("data.txt", 'a') do |file|#data.txtを追記で開く
                file.puts(post) #書き込み
            end
            break
        else
            puts "1から5で入力してください"
        end
    end
end

def out_evaluation
    puts "これまでの結果"
    File.open("data.txt", "r") do |file|
        file.each_line do |line|
            puts line
        end
    end
end

while true
    puts "実施したい処理を選択してください"
    puts "1:評価ポイントとコメントを入力する"
    puts "2:今までの結果を確認する"
    puts "3:終了する"

    num = gets.to_i

    case num
    when 1
        get_evaluation()
    when 2
        out_evaluation()
    when 3
        puts "終了します"    
        break
    else
        puts "1から3で入力してください"
    end
end