Rails.application.routes.draw do
  root "home#index"

  resources :users do
    collection do
      get :resume_create
    end
  end

  get "resume_preview" => "user#preview"

  # resumeのtemplateを表示
  get "resume_template" => "resume_template#index"

  # urlを叩けば上のresumeのtemplateをダウンロードしてくれる
  get "download" => "resume_template#download"
end
