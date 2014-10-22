function socket = clearUDPBuffer(socket,varargin)
% clearUDPBuffer Script that clears an UDP Socket Buffer by closing and
% reopening the socket
% Version 0.25
% 
% Inputs
%     Socket: UDP Socket to be cleared
% 
% Outputs
%     Socket: UDP Socket
% 
% Use
% 1. import XPlaneConnect.*;
% 2. Socket = openUDP(49005);
% 3. Socket = clearUDPBuffer(Socket);
% 
% Change Log
%  10/02/14: [CT] V0.25: Updated to work with updated xpcPlugin
%  04/18/14: [CT] Added Versioning
%  09/12/13: [CT] Add optional arguments
%  09/10/13: [CT] Code created
% 
% Contributors
%   [CT] Christopher Teubert (SGT, Inc.)
%       christopher.a.teubert@nasa.gov
%
% To Do
% 1. Verify Input
%
% BEGIN CODE

    import XPlaneConnect.*
    
    %% Close and reopen socket
    if ~socket.isClosed()
        port = socket.getLocalPort(); %get port of socket
        socket.close; %Close Socket
        socket = openUDP(port,varargin); %open new socket
    end
end