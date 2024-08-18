#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY'���  ���EP���/nޮ����    P.��޵w;g��)M�1M4`G��4�F@hh�@�2y� Љ=z��4�I�z��     4 ��&�M�dz��� 4�     ڒ���Q�4i�F��A�(�
x��zOSOH�hhz� hh  ����_g;��k��GQ�f�~�x ���c\U����E��msx��>�=*��$u2Jc)�-|�cf�)J�P�;D�?xaL,m �x`B{⚝ 7ޑ�Ⱥ��[���ا��,:�j�L:e}��e
o���@R���U���\��b���V/>~')x�r���E�B�����膡oP�R�
3�W͟~�ީgK�*A��;i�4��'�qc��sfQuS�}8	�Rڜ����z Wv�U_T�� Nu��ӫ˝9��PKr=��2B_p)B �V�9K�OakB�U���9lwG, �Qe5ŝ�P%���6I�%Bci��L��.,hf�l��T�&F���`*&(�&ru�#�e�٣0�vtC��6�If˔U�=�e%Έ�}�ށ1
�v�)Xp�gޔ��ʂ��-"Bl:y�E܅d�$��Pڪ��[��m��rBxH�u]���6Fr*�*�#��L�ĕ�����F�*���U��xc����F���!=XZ*�鴙,� �Ӟ�Y�R��<(�-$�l��0YO)(�`��c#D��/��JDT���(�9Ղ����Bm�(DSR�e%Ϥ�)���\<��
�|��J��PJ�bc�F����E,Ds�}����΢ Ц��m�L� �좖��d�u�$m��R�@��`ՠ�L=K� :}��f�p1�&�J��ym�"��" B��K,qr��^ $S�FO�s	�B��<+v��&��¿P�������"�(H��` 