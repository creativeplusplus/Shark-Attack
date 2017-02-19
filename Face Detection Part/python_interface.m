function python_interface(classifiedObject)

pythonFilePath = 'python D:\\"Google Drive"\\"MS Dream"\\"MS Study Material"\\"First Sem"\\"Computer Vision"\\Project\\detectAndTrackFaces\\FinalProject\\pyOSC_client_example.py';
if size(classifiedObject,2) > 0
    commandStr = strcat(pythonFilePath,' face');
else
    commandStr = strcat(pythonFilePath,' Noface');
end
[status, commandOut] = system(commandStr);
 if status ==0
     fprintf('%s\n',commandOut)
 else
     fprintf('Error: %s\n',commandOut)
 end
 
end