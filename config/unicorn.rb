root = "/home/www/apps/weichang/current"
working_directory root
pid "#{root}/tmp/pids/unicorn_weichang.pid"
stderr_path "#{root}/log/unicorn_weichang.stderr.log"
stdout_path "#{root}/log/unicorn_weichang.log"

listen "/tmp/unicorn_weichang.sock"
worker_processes 3
timeout 30
#preload_app true
