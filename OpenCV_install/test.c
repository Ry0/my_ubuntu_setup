#include <cv.h>
#include <highgui.h>
#include <stdio.h>

int main(void)
{
  
  char filename[]="no_shintyoku.png";//ここに相対パスでも絶対パスでもいいので指定したい画像ファイルを書いてください";  //いじるのはここだけです。

  IplImage *img = cvLoadImage(filename, CV_LOAD_IMAGE_ANYCOLOR);
  if( img == NULL){
    fprintf(stderr,"なんの成果も得られませんでしたぁあああああああ！\n");
    exit(1);
  }

  cvNamedWindow("進撃のテスト",CV_WINDOW_AUTOSIZE);
  cvShowImage("進撃のテスト",img);
  cvWaitKey(0);

  cvReleaseImage(&img);
  cvDestroyWindow("進撃のテスト");
  return 0;
}
