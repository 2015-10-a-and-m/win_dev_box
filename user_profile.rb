module UserProfile
  def user_name
    File.basename(`whoami`.chomp)
  end

  def settings_file
    "#{user_name}.settings"
  end
end
