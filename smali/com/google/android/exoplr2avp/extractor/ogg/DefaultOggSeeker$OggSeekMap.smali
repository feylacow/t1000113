.class final Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker$OggSeekMap;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OggSeekMap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker$1;)V
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker$OggSeekMap;-><init>(Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;)V

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;->access$100(Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;)Lcom/google/android/exoplr2avp/extractor/ogg/StreamReader;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;->access$400(Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/extractor/ogg/StreamReader;->convertGranuleToTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplr2avp/extractor/SeekMap$SeekPoints;
    .locals 10

    .line 260
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;->access$100(Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;)Lcom/google/android/exoplr2avp/extractor/ogg/StreamReader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/extractor/ogg/StreamReader;->convertTimeToGranule(J)J

    move-result-wide v0

    .line 261
    iget-object v2, p0, Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;

    .line 262
    invoke-static {v2}, Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;->access$200(Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;

    .line 263
    invoke-static {v4}, Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;->access$300(Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;

    invoke-static {v6}, Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;->access$200(Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    mul-long v0, v0, v4

    iget-object v4, p0, Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;

    invoke-static {v4}, Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;->access$400(Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v4

    div-long/2addr v0, v4

    add-long/2addr v2, v0

    const-wide/16 v0, 0x7530

    sub-long v4, v2, v0

    .line 265
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;

    .line 266
    invoke-static {v0}, Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;->access$200(Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;->access$300(Lcom/google/android/exoplr2avp/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplr2avp/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 267
    new-instance v2, Lcom/google/android/exoplr2avp/extractor/SeekMap$SeekPoints;

    new-instance v3, Lcom/google/android/exoplr2avp/extractor/SeekPoint;

    invoke-direct {v3, p1, p2, v0, v1}, Lcom/google/android/exoplr2avp/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v2, v3}, Lcom/google/android/exoplr2avp/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplr2avp/extractor/SeekPoint;)V

    return-object v2
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
