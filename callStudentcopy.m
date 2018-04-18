% Copyright (C) 2018 Samuel Bechara
% 
% This program is free software; you can redistribute it and/or modify it
% under the terms of the GNU General Public License as published by
% the Free Software Foundation; either version 3 of the License, or
% (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.

% Author: Samuel Bechara <sbechara@sbechara-ThinkPad-T440s>
% Created: 2018-01-04

function callStudentcopy(courseIdent)
  % callStudent() is a function that allows instructors to track participation
  %
  % It is reccomended to call this function from a terminal running octave-cli
  % For more detailed documentation, please see README.md in root folder
  %
  % Inputs:
  %   courseIdent - a string that cooresponds to the .mat file with data
  %
  % Copyright (C) 2018 Samuel Bechara
  
  if nargin ~= 1
    error('This function requires exactly 1 input. See Docs');
  end
  
  
  load(courseIdent)
  % .mat file should contain 4 vectors (n - number of students)
  %   names - nx1 vector
  %   calls - nx1 vector
  %   numCorrect - nx1 vector
  %   blacklist - a vector containing a list of studentNums that have dropped
  
  % Select a random student
  rStudent = randi(length(names));

  % Make sure everyone gets called on at least once before cycling through
  % roster again. Also, check if student is dropped using blacklist array
  if max(calls) ~= min(calls)
      while calls(rStudent) == max(calls)
          rStudent = randi(length(names));
      end
  elseif ismember(rStudent,blacklist)
      while ismember(rStudent,blacklist)
        rStudent = randi(length(names));
      end
  end

  % "Call" on student
  fprintf('\nStudent number %i is: %s\n\n',rStudent,names{rStudent});

  present = input('Is student "here"? 0-No 1-Yes ---->  ');

  if present ~= 0 && present ~= 1
      fprintf('\n');
      disp('Skipping...');
      fprintf('\n');
  else
      calls(rStudent) = calls(rStudent) + 1;
  end

  if present == 1
      numCorrect(rStudent) = numCorrect(rStudent) + 1;
  end

  save("-mat",saveFilePath,"blacklist","calls","names","numCorrect","saveFilePath")

end