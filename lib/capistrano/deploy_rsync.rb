require 'capistrano/git'

class Capistrano::Git

    module RsyncStrategy
        # execute rsync in context with arguments
        def rsync(*args)
            args.unshift(:rsync)
            context.execute *args
        end

        def test
            puts "Nothings to test"
        end

        def check
            puts "Nothing to check"
        end

        def clone
            on roles(:all) do |role|
                run_locally do
                    execute "rsync", "-avz", "dist/", "#{role.user}@#{role.hostname}:#{repo_path}"
                end
            end
        end

        def update
            clone
        end

        def release
            on roles(:all) do
                execute :cp, '-r', "#{repo_path}/", "#{release_path}/dist"
            end
        end

        def fetch_revision
            run_locally do
                IO.popen ("git rev-list --max-count=1 --abbrev-commit #{fetch(:branch)}") do |f|
                    set :current_revision, f.gets
                end
            end
        end
    end
end



