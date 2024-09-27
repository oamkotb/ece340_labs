function y=sysresp(x, a)
  %
  % Computes the output in response to an arbitrary input x[n], n=0, ...N-1.
  % Assume that the system has 0 initial conditions.
  % Input:
  %   x: the input signal,
  %   a: the system parameter
  % Output:
  %   y: the output signal

  N = length(x); % length of the vector
  y = zeros(1, N);

  for k = 1:N+1
    if k == 1
      y(k) = 1;
    else
      y(k) = 1 + a * y(k-1);
    end
  end

  figure(1)
  stem(1:N+1, y,'LineWidth', 1, 'Color', 'b');
  title(['Plot of y[k] when a = ', num2str(a), '.']);
  xlabel('k');
  ylabel('y[k]');
  return