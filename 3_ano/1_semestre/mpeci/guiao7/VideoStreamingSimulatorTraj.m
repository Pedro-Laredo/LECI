function [Pb, t_vec, n_vec] = VideoStreamingSimulatorTraj(lambda, avgMovieDur, B, M, N)
% VideoStreamingSimulatorTraj
%   Simulates a video-streaming server and returns:
%     Pb    – estimated blocking probability
%     t_vec – time instants of state changes [minutes]
%     n_vec – number of simultaneous movies just after each event
%
% INPUTS
%   lambda      – arrival rate [requests/min]
%   avgMovieDur – average movie duration [min]
%   B           – bitrate per movie [Mbps]
%   M           – total server capacity [Mbps]
%   N           – number of arrival events to simulate
%
% ASSUMPTIONS
%   - Poisson arrivals
%   - Exponential movie durations
%   - Loss system (blocked requests are rejected)

    C = floor(M/B);           % max number of simultaneous movies
    mu = 1/avgMovieDur;       % service rate [1/min]

    % State variables
    t = 0;                    % current simulation time
    n = 0;                    % number of active movies
    blocked = 0;              % blocked requests counter
    arrivals = 0;             % arrival counter

    % Event times
    t_next_arrival = exprnd(1/lambda);  % exponential interarrival
    t_next_departure = inf;             % no departure when n=0

    % Trajectory storage (preallocate a bit larger than N)
    t_vec = zeros(2*N,1);
    n_vec = zeros(2*N,1);
    k = 1;
    t_vec(k) = t;
    n_vec(k) = n;

    % We need to store all departure times of ongoing movies
    dep_times = [];           % vector of scheduled departure times

    while arrivals < N
        % Decide next event
        if t_next_arrival < t_next_departure
            % ----- ARRIVAL -----
            t = t_next_arrival;
            arrivals = arrivals + 1;

            if n < C
                % Accept request
                n = n + 1;
                % schedule its departure
                service_time = exprnd(1/mu);
                dep_time = t + service_time;
                dep_times(end+1) = dep_time;

                % next departure is min(dep_times)
                t_next_departure = min(dep_times);
            else
                % Block request
                blocked = blocked + 1;
            end

            % schedule next arrival
            t_next_arrival = t + exprnd(1/lambda);
        else
            % ----- DEPARTURE -----
            t = t_next_departure;

            % remove this departure from list
            [~, idx] = min(dep_times);
            dep_times(idx) = [];
            n = n - 1;

            % update next departure time
            if isempty(dep_times)
                t_next_departure = inf;
            else
                t_next_departure = min(dep_times);
            end
        end

        % store trajectory point
        k = k + 1;
        t_vec(k) = t;
        n_vec(k) = n;
    end

    % Trim unused tail
    t_vec = t_vec(1:k);
    n_vec = n_vec(1:k);

    % Blocking probability
    Pb = blocked / arrivals;
end
