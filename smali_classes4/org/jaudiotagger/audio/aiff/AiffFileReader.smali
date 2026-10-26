.class public Lorg/jaudiotagger/audio/aiff/AiffFileReader;
.super Lorg/jaudiotagger/audio/generic/AudioFileReader2;
.source "AiffFileReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileReader2;-><init>()V

    return-void
.end method


# virtual methods
.method protected getEncodingInfo(Ljava/nio/file/Path;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    new-instance v0, Lorg/jaudiotagger/audio/aiff/AiffInfoReader;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/aiff/AiffInfoReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/aiff/AiffInfoReader;->read(Ljava/nio/file/Path;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    move-result-object p1

    return-object p1
.end method

.method protected getTag(Ljava/nio/file/Path;)Lorg/jaudiotagger/tag/Tag;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    new-instance v0, Lorg/jaudiotagger/audio/aiff/AiffTagReader;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/aiff/AiffTagReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/aiff/AiffTagReader;->read(Ljava/nio/file/Path;)Lorg/jaudiotagger/tag/aiff/AiffTag;

    move-result-object p1

    return-object p1
.end method
