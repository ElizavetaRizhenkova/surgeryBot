%% Bead injection protocol
% protocol for injecitng beads into LMN

%% Enter animal details:

name = 'NP029';
age = [];
weight = [];
injectionCoordinatesOriginal = []; %(non scaled injection coordinates);

% record surgery start time
s.log('start of surgery');

%% 1:: Create surgery object.

s = surgery(surgery_getSettings_rig2);

% zero on calibration cross
% put mouse in stereotax
% nair, etc
% expose skull, bring mouse bregma in line with the origin

%% LEVEL THE ROLL OF THE SKULL - KEEP THE PRESSURE DIALS PRESSED DOWN SUCH THAT THEY ARE BOTH AT ZERO. 

xyz = s.getXYZ;
rollLevelZ = xyz(0);

%%

% move 2 mm laterally  
s.goto([0,0,rollLevelZ+2]);
s.goto([2,0,rollLevelZ+2]);

%% LOWER UNTIL THE LEFT DIAL REACHES ZERO

% save z coordinate 
xyz = s.getXYZ;
pitchLevelZ = xyz(3);

%%
% -> move to the rough location of lambda

% move in z
s.goto([2,0,pitchLevelZ+2]);
% move in y
s.goto([2,-4.325,pitchLevelZ+2]);
% move down in z
s.goto([2,-4.325,pitchLevelZ]);

%% ADJUST PITCH UNTIL LEFT DIAL READS ZERO

% return to bregma to make sure that the head is still level 

% move up in z
s.goto([2,-4.325,pitchLevelZ+2]);
% move forward in y
s.goto([2,0,pitchLevelZ+2]);
% move down in z
s.goto([2,0,pitchLevelZ]);

%% CHECK THAT LEFT DIAL READS ZERO
% Otherwise repeat previous two steps or try to level manually

% return to the roll location
s.goto([2,0,pitchLevelZ+2]);
% 
s.goto([0,0,pitchLevelZ+2]);
% lower in z
s.goto([0,0,rollLevelZ]); 

%% CHECK THAT DIALS ARE BOTH EQUAL
% otherwise adjust the roll again and repeat steps

%% REMOVE THE PRESSURE SENSOR

s.log('skull flat');

%% PLACE CAMERA IN ARM, MAKE SURE LIGHT IS ALL THE WAY ON

% move to compensate for camera offset

% compute pixels per um

% take an image stack

% determine rough bregma autofocus point

% move to bregma autofocus point

% take image of the skull

%%
% draw over the midline

%% DRAWN OVER MIDLINE ?

%% DRAWN OVER THE CORONAL SUTURE - ?

%% DRAWN OVER THE LAMBDOID SUTURE - ?

%% DRAWN AROUND THE EDGE OF THE SKULL?

% fit bregma using intersection

% fit bregma using parabola

% fit midline w/ slope

% fit midline assuming straight head

% fit midline using the skull symmetry

% display all the fits

%% ONLY RUN THIS CELL IF YOU DECIDE TO COMPENSATE FOR HEAD ROTATION

% get estimates for the rotation angle


%% PICKED BREGMA?

% save all info

% preview cam with bregma, axes, and target coordinates overlaid. 

% compute what the 

%% PUT THE DRILL IN THE ARM AND LOWER IT ABOUT 2 mm ABOVE SURFACE

% get z coordinate

% Go to bregma

%% LOWER DRILL DOWN TO TOUCH SURFACE AND CHECK THAT IT IS WHERE BREGMA IS

% get Z coordinate,

% move to injection coordinate


%% LOWER DRILL DOWN TO TOUCH THE SURFACE

% save the Z coordinate - this will eventually help us to make Z-targetting
% more precise

%% MARKED THE SKULL?

%% DRILLED CRANIOTOMY?

%% PLACE THE INJECTION PIPETTE HOLDER IN THE ARM  (w/ pipette)

% move to bregma

%% LOWER THE INJECTION PIPETTE DOWN TO TOUCH THE SKULL AT BREGMA

% record Z position

% Move to above the craniotomy

% Lower the pipette into the brain

% wait 5 minutes for tissue to relax

%% PIPETTE LOWERED IN?

%% INJECT 0.5 TICKS OF BEADS

% wait 10 minutes for pressure to normalize in the tissue.

% slowly withdraw the pipette
























