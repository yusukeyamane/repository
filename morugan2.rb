unless user.admin && !user.editor
  redirect_to editor_url, alert: "管理者権限がありません"
elsif !user.admin && !user.editor
  redirect_to login_url, alert: "ログインできません"
else
  redirect_to admin_url
end

if !user.admin && user.editor
  redirect_to editor_url, alert: "管理者権限がありません"
elsif !user.admin && !user.editor
  redirect_to login_url, alert: "ログインできません"
else
  redirect_to admin_url
end